.class public Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;
.super Lcn/xutils/commons/concurrent/BackgroundInitializer;
.source "CallableBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/xutils/commons/concurrent/BackgroundInitializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;, "Lcn/xutils/commons/concurrent/CallableBackgroundInitializer<TT;>;"
    .local p1, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;-><init>()V

    .line 78
    invoke-direct {p0, p1}, Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;->checkCallable(Ljava/util/concurrent/Callable;)V

    .line 79
    iput-object p1, p0, Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p2, "exec"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;, "Lcn/xutils/commons/concurrent/CallableBackgroundInitializer<TT;>;"
    .local p1, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0, p2}, Lcn/xutils/commons/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 95
    invoke-direct {p0, p1}, Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;->checkCallable(Ljava/util/concurrent/Callable;)V

    .line 96
    iput-object p1, p0, Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    .line 97
    return-void
.end method

.method private checkCallable(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;, "Lcn/xutils/commons/concurrent/CallableBackgroundInitializer<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-string v0, "callable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    return-void
.end method


# virtual methods
.method protected initialize()Ljava/lang/Object;
    .locals 1
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

    .line 109
    .local p0, "this":Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;, "Lcn/xutils/commons/concurrent/CallableBackgroundInitializer<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
