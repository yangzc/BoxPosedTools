.class public final synthetic Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableLongConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableLongConsumer;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableLongConsumer;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableLongConsumer;Lcn/xutils/commons/function/FailableLongConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/commons/function/FailableLongConsumer;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda1;->f$1:Lcn/xutils/commons/function/FailableLongConsumer;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/commons/function/FailableLongConsumer;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda1;->f$1:Lcn/xutils/commons/function/FailableLongConsumer;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/function/FailableLongConsumer;->lambda$andThen$1(Lcn/xutils/commons/function/FailableLongConsumer;Lcn/xutils/commons/function/FailableLongConsumer;J)V

    return-void
.end method
