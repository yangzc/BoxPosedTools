.class public final synthetic Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/xutils/commons/function/FailableRunnable;

    invoke-static {p1}, Lcn/xutils/commons/function/Failable;->lambda$tryWithResources$19(Lcn/xutils/commons/function/FailableRunnable;)V

    return-void
.end method
