.class Lcn/xutils/commons/builder/DiffBuilder$8;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[D[D)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "[",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:[D

.field final synthetic val$rhs:[D


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[D[D)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 435
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$8;, "Lcn/xutils/commons/builder/DiffBuilder$8;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$8;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-object p3, p0, Lcn/xutils/commons/builder/DiffBuilder$8;->val$lhs:[D

    iput-object p4, p0, Lcn/xutils/commons/builder/DiffBuilder$8;->val$rhs:[D

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 435
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$8;, "Lcn/xutils/commons/builder/DiffBuilder$8;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$8;->getLeft()[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Double;
    .locals 1

    .line 440
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$8;, "Lcn/xutils/commons/builder/DiffBuilder$8;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$8;->val$lhs:[D

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([D)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 435
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$8;, "Lcn/xutils/commons/builder/DiffBuilder$8;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$8;->getRight()[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Double;
    .locals 1

    .line 445
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$8;, "Lcn/xutils/commons/builder/DiffBuilder$8;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$8;->val$rhs:[D

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([D)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
