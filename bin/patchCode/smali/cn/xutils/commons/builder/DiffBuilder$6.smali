.class Lcn/xutils/commons/builder/DiffBuilder$6;
.super Lcn/xutils/commons/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;[C[C)Lcn/xutils/commons/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/builder/Diff<",
        "[",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/builder/DiffBuilder;

.field final synthetic val$lhs:[C

.field final synthetic val$rhs:[C


# direct methods
.method constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;[C[C)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/builder/DiffBuilder;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 359
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$6;, "Lcn/xutils/commons/builder/DiffBuilder$6;"
    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$6;->this$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-object p3, p0, Lcn/xutils/commons/builder/DiffBuilder$6;->val$lhs:[C

    iput-object p4, p0, Lcn/xutils/commons/builder/DiffBuilder$6;->val$rhs:[C

    invoke-direct {p0, p2}, Lcn/xutils/commons/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 359
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$6;, "Lcn/xutils/commons/builder/DiffBuilder$6;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$6;->getLeft()[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Character;
    .locals 1

    .line 364
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$6;, "Lcn/xutils/commons/builder/DiffBuilder$6;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$6;->val$lhs:[C

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([C)[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 359
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$6;, "Lcn/xutils/commons/builder/DiffBuilder$6;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/DiffBuilder$6;->getRight()[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Character;
    .locals 1

    .line 369
    .local p0, "this":Lcn/xutils/commons/builder/DiffBuilder$6;, "Lcn/xutils/commons/builder/DiffBuilder$6;"
    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$6;->val$rhs:[C

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->toObject([C)[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
