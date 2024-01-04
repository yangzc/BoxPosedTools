.class public final synthetic Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/BooleanConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/BooleanConsumer;

.field public final synthetic f$1:Lcn/xutils/commons/function/BooleanConsumer;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/BooleanConsumer;Lcn/xutils/commons/function/BooleanConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/BooleanConsumer;

    iput-object p2, p0, Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/BooleanConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Z)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/BooleanConsumer;

    iget-object v1, p0, Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/BooleanConsumer;

    invoke-static {v0, v1, p1}, Lcn/xutils/commons/function/BooleanConsumer;->lambda$andThen$1(Lcn/xutils/commons/function/BooleanConsumer;Lcn/xutils/commons/function/BooleanConsumer;Z)V

    return-void
.end method
