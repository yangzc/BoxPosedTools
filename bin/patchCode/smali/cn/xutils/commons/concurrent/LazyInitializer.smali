.class public abstract Lcn/xutils/commons/concurrent/LazyInitializer;
.super Ljava/lang/Object;
.source "LazyInitializer.java"

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


# static fields
.field private static final NO_INIT:Ljava/lang/Object;


# instance fields
.field private volatile object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/xutils/commons/concurrent/LazyInitializer;->NO_INIT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    .local p0, "this":Lcn/xutils/commons/concurrent/LazyInitializer;, "Lcn/xutils/commons/concurrent/LazyInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcn/xutils/commons/concurrent/LazyInitializer;->NO_INIT:Ljava/lang/Object;

    iput-object v0, p0, Lcn/xutils/commons/concurrent/LazyInitializer;->object:Ljava/lang/Object;

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

    .line 99
    .local p0, "this":Lcn/xutils/commons/concurrent/LazyInitializer;, "Lcn/xutils/commons/concurrent/LazyInitializer<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    .line 101
    .local v0, "result":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcn/xutils/commons/concurrent/LazyInitializer;->NO_INIT:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcn/xutils/commons/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    move-object v0, v2

    .line 104
    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/LazyInitializer;->initialize()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcn/xutils/commons/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    .line 107
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_1
    :goto_0
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
