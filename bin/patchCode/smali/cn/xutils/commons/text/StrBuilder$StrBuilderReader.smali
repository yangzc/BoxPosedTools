.class Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;
.super Ljava/io/Reader;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderReader"
.end annotation


# instance fields
.field private mark:I

.field private pos:I

.field final synthetic this$0:Lcn/xutils/commons/text/StrBuilder;


# direct methods
.method constructor <init>(Lcn/xutils/commons/text/StrBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/text/StrBuilder;

    .line 2935
    iput-object p1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2936
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 2942
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I

    .line 3002
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->mark:I

    .line 3003
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 2996
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .line 2947
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2948
    const/4 v0, -0x1

    return v0

    .line 2950
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 3
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 2956
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2960
    if-nez p3, :cond_0

    .line 2961
    const/4 v0, 0x0

    return v0

    .line 2963
    :cond_0
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v1}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2964
    const/4 v0, -0x1

    return v0

    .line 2966
    :cond_1
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v1}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 2967
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v0

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    sub-int p3, v0, v1

    .line 2969
    :cond_2
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    add-int v2, v1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->getChars(II[CI)V

    .line 2970
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    .line 2971
    return p3

    .line 2958
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public ready()Z
    .locals 2

    .line 2990
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v1}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 3008
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->mark:I

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    .line 3009
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J

    .line 2977
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v2}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v0

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 2980
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 2981
    return-wide v0

    .line 2983
    :cond_1
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;->pos:I

    .line 2984
    return-wide p1
.end method
