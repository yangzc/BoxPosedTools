.class public final Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;
.super Lcn/xutils/boxposed/api/callbacks/XCallback$Param;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodHookParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/Executable;",
        ">",
        "Lcn/xutils/boxposed/api/callbacks/XCallback$Param;"
    }
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field private final extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/reflect/Member;

.field public result:Ljava/lang/Object;

.field public returnEarly:Z

.field public thisObject:Ljava/lang/Object;

.field public throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    .local p0, "this":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<TT;>;"
    invoke-direct {p0}, Lcn/xutils/boxposed/api/callbacks/XCallback$Param;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 123
    iput-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->extras:Ljava/util/HashMap;

    .line 105
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 132
    .local p0, "this":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultOrThrowable()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 175
    .local p0, "this":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    return-object v0

    .line 176
    :cond_0
    throw v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 150
    .local p0, "this":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hasThrowable()Z
    .locals 1

    .line 157
    .local p0, "this":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<TT;>;"
    iget-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 141
    .local p0, "this":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<TT;>;"
    iput-object p1, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 144
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 166
    .local p0, "this":Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;, "Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam<TT;>;"
    iput-object p1, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 169
    return-void
.end method
