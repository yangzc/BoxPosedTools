.class public final synthetic Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableFunction;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableFunction;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableFunction;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableFunction;Lcn/xutils/commons/function/FailableFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/commons/function/FailableFunction;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda1;->f$1:Lcn/xutils/commons/function/FailableFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/commons/function/FailableFunction;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda1;->f$1:Lcn/xutils/commons/function/FailableFunction;

    invoke-static {v0, v1, p1}, Lcn/xutils/commons/function/FailableFunction;->lambda$compose$3(Lcn/xutils/commons/function/FailableFunction;Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
