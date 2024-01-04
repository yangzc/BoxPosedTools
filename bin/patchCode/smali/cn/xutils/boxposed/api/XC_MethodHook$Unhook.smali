.class public Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;
.super Ljava/lang/Object;
.source "XC_MethodHook.java"

# interfaces
.implements Lcn/xutils/boxposed/api/callbacks/IXUnhook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Unhook"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/xutils/boxposed/api/callbacks/IXUnhook<",
        "Lcn/xutils/boxposed/api/XC_MethodHook;",
        ">;"
    }
.end annotation


# instance fields
.field private final hookMethod:Ljava/lang/reflect/Member;

.field final synthetic this$0:Lcn/xutils/boxposed/api/XC_MethodHook;


# direct methods
.method constructor <init>(Lcn/xutils/boxposed/api/XC_MethodHook;Ljava/lang/reflect/Member;)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/boxposed/api/XC_MethodHook;
    .param p2, "hookMethod"    # Ljava/lang/reflect/Member;

    .line 187
    iput-object p1, p0, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;->this$0:Lcn/xutils/boxposed/api/XC_MethodHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    .line 189
    return-void
.end method


# virtual methods
.method public getCallback()Lcn/xutils/boxposed/api/XC_MethodHook;
    .locals 1

    .line 200
    iget-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;->this$0:Lcn/xutils/boxposed/api/XC_MethodHook;

    return-object v0
.end method

.method public bridge synthetic getCallback()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;->getCallback()Lcn/xutils/boxposed/api/XC_MethodHook;

    move-result-object v0

    return-object v0
.end method

.method public getHookedMethod()Ljava/lang/reflect/Member;
    .locals 1

    .line 195
    iget-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public unhook()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    iget-object v1, p0, Lcn/xutils/boxposed/api/XC_MethodHook$Unhook;->this$0:Lcn/xutils/boxposed/api/XC_MethodHook;

    invoke-static {v0, v1}, Lcn/xutils/boxposed/api/XposedBridge;->unhookMethod(Ljava/lang/reflect/Member;Lcn/xutils/boxposed/api/XC_MethodHook;)V

    .line 207
    return-void
.end method
