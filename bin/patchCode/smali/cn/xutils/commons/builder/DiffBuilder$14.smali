.class Lcn/xutils/commons/builder/DiffBuilder$14;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[J[J)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "[",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:[J

.field final synthetic val$rhs:[J


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[J[J)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 663
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$14;, "Lcn/xutils/commons/builder/DiffBuilder$14;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$14;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-object p3, p0, Lcn/xutils/commons/builder/DiffBuilder$14;->val$lhs:[J

    iput-object p4, p0, Lcn/xutils/commons/builder/DiffBuilder$14;->val$rhs:[J

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 663
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$14;, "Lcn/xutils/commons/builder/DiffBuilder$14;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$14;->getLeft()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Long;
    .locals 1

    .line 668
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$14;, "Lcn/xutils/commons/builder/DiffBuilder$14;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$14;->val$lhs:[J

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 663
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$14;, "Lcn/xutils/commons/builder/DiffBuilder$14;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$14;->getRight()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Long;
    .locals 1

    .line 673
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$14;, "Lcn/xutils/commons/builder/DiffBuilder$14;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$14;->val$rhs:[J

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
