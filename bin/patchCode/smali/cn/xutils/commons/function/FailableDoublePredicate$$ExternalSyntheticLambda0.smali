.class public final synthetic Lcn/xutils/commons/function/FailableDoublePredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableDoublePredicate;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableDoublePredicate;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableDoublePredicate;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableDoublePredicate;Lcn/xutils/commons/function/FailableDoublePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableDoublePredicate$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableDoublePredicate;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableDoublePredicate$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableDoublePredicate;

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableDoublePredicate$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableDoublePredicate;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableDoublePredicate$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableDoublePredicate;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/function/FailableDoublePredicate;->lambda$and$2(Lcn/xutils/commons/function/FailableDoublePredicate;Lcn/xutils/commons/function/FailableDoublePredicate;D)Z

    move-result p1

    return p1
.end method
