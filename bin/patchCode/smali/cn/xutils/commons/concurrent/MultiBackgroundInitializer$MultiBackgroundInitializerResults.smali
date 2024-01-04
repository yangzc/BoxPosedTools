.class public Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
.super Ljava/lang/Object;
.source "MultiBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/MultiBackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBackgroundInitializerResults"
.end annotation


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/concurrent/ConcurrentException;",
            ">;"
        }
    .end annotation
.end field

.field private final initializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/concurrent/BackgroundInitializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final resultObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/concurrent/BackgroundInitializer<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/concurrent/ConcurrentException;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p1, "inits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcn/xutils/commons/concurrent/BackgroundInitializer<*>;>;"
    .local p2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "excepts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcn/xutils/commons/concurrent/ConcurrentException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    .line 236
    iput-object p2, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->resultObjects:Ljava/util/Map;

    .line 237
    iput-object p3, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private checkName(Ljava/lang/String;)Lcn/xutils/commons/concurrent/BackgroundInitializer;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/xutils/commons/concurrent/BackgroundInitializer<",
            "*>;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/concurrent/BackgroundInitializer;

    .line 329
    .local v0, "init":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<*>;"
    if-eqz v0, :cond_0

    .line 334
    return-object v0

    .line 330
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No child initializer with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getException(Ljava/lang/String;)Lcn/xutils/commons/concurrent/ConcurrentException;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 293
    invoke-direct {p0, p1}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lcn/xutils/commons/concurrent/BackgroundInitializer;

    .line 294
    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/concurrent/ConcurrentException;

    return-object v0
.end method

.method public getInitializer(Ljava/lang/String;)Lcn/xutils/commons/concurrent/BackgroundInitializer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/xutils/commons/concurrent/BackgroundInitializer<",
            "*>;"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lcn/xutils/commons/concurrent/BackgroundInitializer;

    move-result-object v0

    return-object v0
.end method

.method public getResultObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 265
    invoke-direct {p0, p1}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lcn/xutils/commons/concurrent/BackgroundInitializer;

    .line 266
    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->resultObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initializerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isException(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 278
    invoke-direct {p0, p1}, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lcn/xutils/commons/concurrent/BackgroundInitializer;

    .line 279
    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcn/xutils/commons/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
