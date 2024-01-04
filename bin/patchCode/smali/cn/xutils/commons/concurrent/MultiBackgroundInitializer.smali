.class public Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;
.super Lcn/xutils/commons/concurrent/BackgroundInitializer;
.source "MultiBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/concurrent/BackgroundInitializer<",
        "Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;",
        ">;"
    }
.end annotation


# instance fields
.field private final childInitializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/concurrent/BackgroundInitializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "exec"    # Ljava/util/concurrent/ExecutorService;

    .line 117
    invoke-direct {p0, p1}, Lcn/xutils/commons/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    .line 118
    return-void
.end method

.method static synthetic lambda$initialize$0(Ljava/util/concurrent/ExecutorService;Lcn/xutils/commons/concurrent/BackgroundInitializer;)V
    .locals 1
    .param p0, "exec"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "bi"    # Lcn/xutils/commons/concurrent/BackgroundInitializer;

    .line 181
    invoke-virtual {p1}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->getExternalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p1, p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->setExternalExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->start()Z

    .line 186
    return-void
.end method

.method static synthetic lambda$initialize$1(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcn/xutils/commons/concurrent/BackgroundInitializer;)V
    .locals 1
    .param p0, "results"    # Ljava/util/Map;
    .param p1, "excepts"    # Ljava/util/Map;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Lcn/xutils/commons/concurrent/BackgroundInitializer;

    .line 193
    :try_start_0
    invoke-virtual {p3}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcn/xutils/commons/concurrent/ConcurrentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "cex":Lcn/xutils/commons/concurrent/ConcurrentException;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v0    # "cex":Lcn/xutils/commons/concurrent/ConcurrentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public addInitializer(Ljava/lang/String;Lcn/xutils/commons/concurrent/BackgroundInitializer;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/concurrent/BackgroundInitializer<",
            "*>;)V"
        }
    .end annotation

    .line 134
    .local p2, "backgroundInitializer":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<*>;"
    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    const-string v0, "backgroundInitializer"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addInitializer() must not be called after start()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "backgroundInitializer":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<*>;"
    throw v0

    .line 142
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "backgroundInitializer":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<*>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getTaskCount()I
    .locals 2

    .line 157
    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initialize()Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    monitor-enter p0

    .line 175
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 176
    .local v0, "inits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcn/xutils/commons/concurrent/BackgroundInitializer<*>;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->getActiveExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 180
    .local v1, "exec":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v3, "excepts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcn/xutils/commons/concurrent/ConcurrentException;>;"
    new-instance v4, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v3}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v0, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 199
    new-instance v4, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v3, v5}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults-IA;)V

    return-object v4

    .line 176
    .end local v0    # "inits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcn/xutils/commons/concurrent/BackgroundInitializer<*>;>;"
    .end local v1    # "exec":Ljava/util/concurrent/ExecutorService;
    .end local v2    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "excepts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcn/xutils/commons/concurrent/ConcurrentException;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge synthetic initialize()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;->initialize()Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;

    move-result-object v0

    return-object v0
.end method
