.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableFunction;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda18;->f$0:Lcn/xutils/commons/Functions$FailableFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda18;->f$0:Lcn/xutils/commons/Functions$FailableFunction;

    invoke-static {v0, p1}, Lcn/xutils/commons/Functions;->lambda$asFunction$9(Lcn/xutils/commons/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
