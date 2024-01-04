.class public Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyApiSupport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/Executable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private beforeIdx:I

.field private final callback:Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final snapshot:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "legacySnapshot"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;, "Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport<TT;>;"
    .local p1, "callback":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    new-instance v0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    invoke-direct {v0}, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;-><init>()V

    iput-object v0, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    .line 394
    iput-object p1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->callback:Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;

    .line 395
    iput-object p2, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->snapshot:[Ljava/lang/Object;

    .line 396
    return-void
.end method

.method private syncronizeApi(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;Z)V
    .locals 1
    .param p3, "forward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<",
            "TT;>;",
            "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;, "Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport<TT;>;"
    .local p1, "param":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<TT;>;"
    .local p2, "callback":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    if-eqz p3, :cond_0

    .line 446
    iget-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->method:Ljava/lang/reflect/Member;

    iput-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 447
    iget-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->thisObject:Ljava/lang/Object;

    iput-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 448
    iget-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->args:[Ljava/lang/Object;

    iput-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 449
    iget-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->result:Ljava/lang/Object;

    iput-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 450
    iget-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->throwable:Ljava/lang/Throwable;

    iput-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 451
    iget-boolean v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    iput-boolean v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->returnEarly:Z

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iput-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->method:Ljava/lang/reflect/Member;

    .line 454
    iget-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iput-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->thisObject:Ljava/lang/Object;

    .line 455
    iget-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iput-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->args:[Ljava/lang/Object;

    .line 456
    iget-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    iput-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->result:Ljava/lang/Object;

    .line 457
    iget-object v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    iput-object v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->throwable:Ljava/lang/Throwable;

    .line 458
    iget-boolean v0, p1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->returnEarly:Z

    iput-boolean v0, p2, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    .line 460
    :goto_0
    return-void
.end method


# virtual methods
.method public handleAfter()V
    .locals 5

    .line 423
    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;, "Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->callback:Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->syncronizeApi(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;Z)V

    .line 424
    iget v0, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->beforeIdx:I

    sub-int/2addr v0, v2

    .local v0, "afterIdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 425
    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    invoke-virtual {v1}, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 426
    .local v1, "lastResult":Ljava/lang/Object;
    iget-object v2, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    invoke-virtual {v2}, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 428
    .local v2, "lastThrowable":Ljava/lang/Throwable;
    :try_start_0
    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->snapshot:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcn/xutils/boxposed/api/XC_MethodHook;

    .line 429
    .local v3, "cb":Lcn/xutils/boxposed/api/XC_MethodHook;
    iget-object v4, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    invoke-virtual {v3, v4}, Lcn/xutils/boxposed/api/XC_MethodHook;->afterHookedMethod(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    .end local v3    # "cb":Lcn/xutils/boxposed/api/XC_MethodHook;
    goto :goto_1

    .line 430
    :catchall_0
    move-exception v3

    .line 431
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 434
    if-nez v2, :cond_0

    .line 435
    iget-object v4, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    invoke-virtual {v4, v1}, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 437
    :cond_0
    iget-object v4, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    invoke-virtual {v4, v2}, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 424
    .end local v1    # "lastResult":Ljava/lang/Object;
    .end local v2    # "lastThrowable":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    .end local v0    # "afterIdx":I
    :cond_1
    iget-object v0, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->callback:Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->syncronizeApi(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;Z)V

    .line 442
    return-void
.end method

.method public handleBefore()V
    .locals 5

    .line 399
    .local p0, "this":Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;, "Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->callback:Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->syncronizeApi(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;Z)V

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->beforeIdx:I

    :goto_0
    iget v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->beforeIdx:I

    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->snapshot:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 402
    :try_start_0
    aget-object v1, v3, v1

    check-cast v1, Lcn/xutils/boxposed/api/XC_MethodHook;

    .line 403
    .local v1, "cb":Lcn/xutils/boxposed/api/XC_MethodHook;
    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    invoke-virtual {v1, v3}, Lcn/xutils/boxposed/api/XC_MethodHook;->beforeHookedMethod(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .end local v1    # "cb":Lcn/xutils/boxposed/api/XC_MethodHook;
    nop

    .line 413
    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    iget-boolean v1, v1, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v1, :cond_0

    .line 415
    iget v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->beforeIdx:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->beforeIdx:I

    .line 416
    goto :goto_1

    .line 404
    :catchall_0
    move-exception v1

    .line 405
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lcn/xutils/boxposed/api/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 408
    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 409
    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    iput-boolean v0, v3, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 410
    nop

    .line 400
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    iget v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->beforeIdx:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->beforeIdx:I

    goto :goto_0

    .line 419
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->param:Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;

    iget-object v2, p0, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->callback:Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;

    invoke-direct {p0, v1, v2, v0}, Lcn/xutils/boxposed/api/XposedBridge$LegacyApiSupport;->syncronizeApi(Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;Z)V

    .line 420
    return-void
.end method
