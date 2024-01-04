.class public final synthetic Lcn/xutils/commons/CharSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:C


# direct methods
.method public synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcn/xutils/commons/CharSet$$ExternalSyntheticLambda1;->f$0:C

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-char v0, p0, Lcn/xutils/commons/CharSet$$ExternalSyntheticLambda1;->f$0:C

    check-cast p1, Lcn/xutils/commons/CharRange;

    invoke-static {v0, p1}, Lcn/xutils/commons/CharSet;->lambda$contains$0(CLcn/xutils/commons/CharRange;)Z

    move-result p1

    return p1
.end method
