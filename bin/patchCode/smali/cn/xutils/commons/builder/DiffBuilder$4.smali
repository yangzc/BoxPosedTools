.class Lcn/xutils/commons/builder/DiffBuilder$4;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[B[B)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "[",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:[B

.field final synthetic val$rhs:[B


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 283
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$4;, "Lcn/xutils/commons/builder/DiffBuilder$4;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$4;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-object p3, p0, Lcn/xutils/commons/builder/DiffBuilder$4;->val$lhs:[B

    iput-object p4, p0, Lcn/xutils/commons/builder/DiffBuilder$4;->val$rhs:[B

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 283
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$4;, "Lcn/xutils/commons/builder/DiffBuilder$4;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$4;->getLeft()[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Byte;
    .locals 1

    .line 288
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$4;, "Lcn/xutils/commons/builder/DiffBuilder$4;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$4;->val$lhs:[B

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([B)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 283
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$4;, "Lcn/xutils/commons/builder/DiffBuilder$4;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$4;->getRight()[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Byte;
    .locals 1

    .line 293
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$4;, "Lcn/xutils/commons/builder/DiffBuilder$4;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$4;->val$rhs:[B

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([B)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
