.class Lcn/xutils/commons/builder/DiffBuilder$9;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;FF)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:F

.field final synthetic val$rhs:F


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;FF)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 473
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$9;, "Lcn/xutils/commons/builder/DiffBuilder$9;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$9;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput p3, p0, Lcn/xutils/commons/builder/DiffBuilder$9;->val$lhs:F

    iput p4, p0, Lcn/xutils/commons/builder/DiffBuilder$9;->val$rhs:F

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Float;
    .locals 1

    .line 478
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$9;, "Lcn/xutils/commons/builder/DiffBuilder$9;"
    iget v0, p0, Lcn/xutils/commons/builder/DiffBuilder$9;->val$lhs:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 473
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$9;, "Lcn/xutils/commons/builder/DiffBuilder$9;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$9;->getLeft()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Float;
    .locals 1

    .line 483
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$9;, "Lcn/xutils/commons/builder/DiffBuilder$9;"
    iget v0, p0, Lcn/xutils/commons/builder/DiffBuilder$9;->val$rhs:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 473
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$9;, "Lcn/xutils/commons/builder/DiffBuilder$9;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$9;->getRight()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method