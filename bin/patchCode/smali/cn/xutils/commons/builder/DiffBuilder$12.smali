.class Lcn/xutils/commons/builder/DiffBuilder$12;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[I[I)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "[",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:[I

.field final synthetic val$rhs:[I


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[I[I)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 587
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$12;, "Lcn/xutils/commons/builder/DiffBuilder$12;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$12;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-object p3, p0, Lcn/xutils/commons/builder/DiffBuilder$12;->val$lhs:[I

    iput-object p4, p0, Lcn/xutils/commons/builder/DiffBuilder$12;->val$rhs:[I

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 587
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$12;, "Lcn/xutils/commons/builder/DiffBuilder$12;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$12;->getLeft()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Integer;
    .locals 1

    .line 592
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$12;, "Lcn/xutils/commons/builder/DiffBuilder$12;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$12;->val$lhs:[I

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 587
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$12;, "Lcn/xutils/commons/builder/DiffBuilder$12;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$12;->getRight()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Integer;
    .locals 1

    .line 597
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$12;, "Lcn/xutils/commons/builder/DiffBuilder$12;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$12;->val$rhs:[I

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method