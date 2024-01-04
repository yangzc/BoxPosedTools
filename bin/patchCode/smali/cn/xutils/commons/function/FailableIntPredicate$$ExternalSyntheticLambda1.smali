.class public final synthetic Lcn/xutils/commons/function/FailableIntPredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableIntPredicate;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableIntPredicate;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableIntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableIntPredicate$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/commons/function/FailableIntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/function/FailableIntPredicate$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/commons/function/FailableIntPredicate;

    invoke-static {v0, p1}, Lcn/xutils/commons/function/FailableIntPredicate;->lambda$negate$3(Lcn/xutils/commons/function/FailableIntPredicate;I)Z

    move-result p1

    return p1
.end method
