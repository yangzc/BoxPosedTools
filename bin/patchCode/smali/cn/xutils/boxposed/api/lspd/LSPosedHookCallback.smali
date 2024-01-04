.class public Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;
.super Ljava/lang/Object;
.source "LSPosedHookCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/Executable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public isSkipped:Z

.field public method:Ljava/lang/reflect/Member;

.field public result:Ljava/lang/Object;

.field public thisObject:Ljava/lang/Object;

.field public throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .line 45
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 33
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->method:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 69
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getThisObject()Ljava/lang/Object;
    .locals 1

    .line 39
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->thisObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 75
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSkipped()Z
    .locals 1

    .line 80
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    iget-boolean v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    return v0
.end method

.method public returnAndSkip(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 52
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    iput-object p1, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->result:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->throwable:Ljava/lang/Throwable;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    .line 55
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 85
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    iput-object p1, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->result:Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->throwable:Ljava/lang/Throwable;

    .line 87
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 91
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->result:Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->throwable:Ljava/lang/Throwable;

    .line 93
    return-void
.end method

.method public throwAndSkip(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 59
    .local p0, "this":Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;, "Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->result:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->throwable:Ljava/lang/Throwable;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/boxposed/api/lspd/LSPosedHookCallback;->isSkipped:Z

    .line 62
    return-void
.end method
