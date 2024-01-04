.class Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;
.super Ljava/lang/Object;
.source "BackgroundInitializer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/BackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final execFinally:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcn/xutils/commons/concurrent/BackgroundInitializer;


# direct methods
.method constructor <init>(Lcn/xutils/commons/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p2, "exec"    # Ljava/util/concurrent/ExecutorService;

    .line 312
    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>.InitializationTask;"
    iput-object p1, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;->this$0:Lcn/xutils/commons/concurrent/BackgroundInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    .line 314
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>.InitializationTask;"
    :try_start_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;->this$0:Lcn/xutils/commons/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->initialize()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    iget-object v1, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 328
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 325
    :cond_0
    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 328
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 330
    :cond_1
    throw v0
.end method
