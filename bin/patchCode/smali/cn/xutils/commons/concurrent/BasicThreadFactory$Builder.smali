.class public Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;
.super Ljava/lang/Object;
.source "BasicThreadFactory.java"

# interfaces
.implements Lcn/xutils/commons/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/BasicThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/builder/Builder<",
        "Lcn/xutils/commons/concurrent/BasicThreadFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private daemon:Ljava/lang/Boolean;

.field private exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private namingPattern:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static bridge synthetic -$$Nest$fgetdaemon(Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->daemon:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexceptionHandler(Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    iget-object p0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnamingPattern(Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpriority(Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwrappedFactory(Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    iget-object p0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcn/xutils/commons/concurrent/BasicThreadFactory;
    .locals 2

    .line 368
    new-instance v0, Lcn/xutils/commons/concurrent/BasicThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/xutils/commons/concurrent/BasicThreadFactory;-><init>(Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;Lcn/xutils/commons/concurrent/BasicThreadFactory-IA;)V

    .line 369
    .local v0, "factory":Lcn/xutils/commons/concurrent/BasicThreadFactory;
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->reset()V

    .line 370
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->build()Lcn/xutils/commons/concurrent/BasicThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public daemon(Z)Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;
    .locals 1
    .param p1, "daemon"    # Z

    .line 312
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->daemon:Ljava/lang/Boolean;

    .line 313
    return-object p0
.end method

.method public namingPattern(Ljava/lang/String;)Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 297
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    iput-object p1, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    .line 300
    return-object p0
.end method

.method public priority(I)Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;
    .locals 1
    .param p1, "priority"    # I

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    .line 325
    return-object p0
.end method

.method public reset()V
    .locals 1

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    .line 353
    iput-object v0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 354
    iput-object v0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    .line 355
    iput-object v0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    .line 356
    iput-object v0, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->daemon:Ljava/lang/Boolean;

    .line 357
    return-void
.end method

.method public uncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;
    .locals 1
    .param p1, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 339
    const-string v0, "handler"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    iput-object p1, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 342
    return-object p0
.end method

.method public wrappedFactory(Ljava/util/concurrent/ThreadFactory;)Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;
    .locals 1
    .param p1, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .line 282
    const-string v0, "factory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iput-object p1, p0, Lcn/xutils/commons/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    .line 285
    return-object p0
.end method
