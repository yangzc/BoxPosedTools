.class public final synthetic Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcn/xutils/commons/reflect/MethodUtils;->lambda$getMatchingMethod$4(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
