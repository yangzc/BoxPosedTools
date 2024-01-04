.class public final synthetic Lcn/xutils/commons/builder/DiffResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/builder/ToStringBuilder;

.field public final synthetic f$1:Lcn/xutils/commons/builder/ToStringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/builder/ToStringBuilder;Lcn/xutils/commons/builder/ToStringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/builder/DiffResult$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/builder/ToStringBuilder;

    iput-object p2, p0, Lcn/xutils/commons/builder/DiffResult$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/builder/ToStringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/builder/DiffResult$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/builder/ToStringBuilder;

    iget-object v1, p0, Lcn/xutils/commons/builder/DiffResult$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/builder/ToStringBuilder;

    check-cast p1, Lcn/xutils/commons/builder/Diff;

    invoke-static {v0, v1, p1}, Lcn/xutils/commons/builder/DiffResult;->lambda$toString$0(Lcn/xutils/commons/builder/ToStringBuilder;Lcn/xutils/commons/builder/ToStringBuilder;Lcn/xutils/commons/builder/Diff;)V

    return-void
.end method
