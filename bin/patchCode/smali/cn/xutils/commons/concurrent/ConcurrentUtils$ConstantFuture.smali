.class final Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/ConcurrentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConstantFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;, "Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    .line 318
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 362
    .local p0, "this":Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;, "Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;, "Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;, "Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 353
    .local p0, "this":Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;, "Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 327
    .local p0, "this":Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;, "Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
