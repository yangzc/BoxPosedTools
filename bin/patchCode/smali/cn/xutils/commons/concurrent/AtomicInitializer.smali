.class public abstract Lcn/xutils/commons/concurrent/AtomicInitializer;
.super Ljava/lang/Object;
.source "AtomicInitializer.java"

# interfaces
.implements Lcn/xutils/commons/concurrent/ConcurrentInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/concurrent/ConcurrentInitializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final reference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    .local p0, "this":Lcn/xutils/commons/concurrent/AtomicInitializer;, "Lcn/xutils/commons/concurrent/AtomicInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/xutils/commons/concurrent/ConcurrentException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lcn/xutils/commons/concurrent/AtomicInitializer;, "Lcn/xutils/commons/concurrent/AtomicInitializer<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/AtomicInitializer;->initialize()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcn/xutils/commons/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcn/xutils/commons/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method protected abstract initialize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/xutils/commons/concurrent/ConcurrentException;
        }
    .end annotation
.end method
