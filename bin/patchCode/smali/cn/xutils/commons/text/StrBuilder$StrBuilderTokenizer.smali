.class Lcn/xutils/commons/text/StrBuilder$StrBuilderTokenizer;
.super Lcn/xutils/commons/text/StrTokenizer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/text/StrBuilder;


# direct methods
.method constructor <init>(Lcn/xutils/commons/text/StrBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/text/StrBuilder;

    .line 2900
    iput-object p1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {p0}, Lcn/xutils/commons/text/StrTokenizer;-><init>()V

    .line 2901
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    .line 2915
    invoke-super {p0}, Lcn/xutils/commons/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 2916
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2917
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v1}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2919
    :cond_0
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2906
    if-nez p1, :cond_0

    .line 2907
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lcn/xutils/commons/text/StrBuilder;

    iget-object v0, v0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v1}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lcn/xutils/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2909
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
