.class public abstract Lcn/xutils/commons/concurrent/AtomicSafeInitializer;
.super Ljava/lang/Object;
.source "AtomicSafeInitializer.java"

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
.field private final factory:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/xutils/commons/concurrent/AtomicSafeInitializer<",
            "TT;>;>;"
        }
    .end annotation
.end field

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

    .line 54
    .local p0, "this":Lcn/xutils/commons/concurrent/AtomicSafeInitializer;, "Lcn/xutils/commons/concurrent/AtomicSafeInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/AtomicSafeInitializer;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
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

    .line 74
    .local p0, "this":Lcn/xutils/commons/concurrent/AtomicSafeInitializer;, "Lcn/xutils/commons/concurrent/AtomicSafeInitializer<TT;>;"
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "result":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AtomicSafeInitializer;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/AtomicSafeInitializer;->initialize()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_1
    return-object v1
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
