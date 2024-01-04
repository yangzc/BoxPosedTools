.class public final synthetic Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableLongPredicate;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableLongPredicate;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableLongPredicate;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableLongPredicate;Lcn/xutils/commons/function/FailableLongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableLongPredicate;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableLongPredicate;

    return-void
.end method


# virtual methods
.method public final test(J)Z
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableLongPredicate;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableLongPredicate$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableLongPredicate;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/function/FailableLongPredicate;->lambda$or$4(Lcn/xutils/commons/function/FailableLongPredicate;Lcn/xutils/commons/function/FailableLongPredicate;J)Z

    move-result p1

    return p1
.end method
