.class public final synthetic Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/boxposed/api/XposedHelpers$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    invoke-static {v0}, Lcn/xutils/boxposed/api/XposedHelpers;->lambda$findMethodBestMatch$5(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/NoSuchMethodError;

    move-result-object v0

    return-object v0
.end method
