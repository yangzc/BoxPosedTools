.class public final synthetic Lcn/xutils/commons/function/TriFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/TriFunction;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/TriFunction;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/TriFunction;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/TriFunction$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/TriFunction;

    iput-object p2, p0, Lcn/xutils/commons/function/TriFunction$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/TriFunction$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/TriFunction;

    iget-object v1, p0, Lcn/xutils/commons/function/TriFunction$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2, p3}, Lcn/xutils/commons/function/TriFunction;->lambda$andThen$0(Lcn/xutils/commons/function/TriFunction;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
