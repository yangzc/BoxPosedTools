.class Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/text/StrBuilder;


# direct methods
.method constructor <init>(Lcn/xutils/commons/text/StrBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/text/StrBuilder;

    .line 3020
    iput-object p1, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 3021
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 3027
    return-void
.end method

.method public flush()V
    .locals 0

    .line 3033
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I

    .line 3038
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;->this$0:Lcn/xutils/commons/text/StrBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrBuilder;->append(C)Lcn/xutils/commons/text/StrBuilder;

    .line 3039
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 3056
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 3057
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 3062
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lcn/xutils/commons/text/StrBuilder;

    .line 3063
    return-void
.end method

.method public write([C)V
    .locals 1
    .param p1, "cbuf"    # [C

    .line 3044
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v0, p1}, Lcn/xutils/commons/text/StrBuilder;->append([C)Lcn/xutils/commons/text/StrBuilder;

    .line 3045
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 3050
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;->this$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append([CII)Lcn/xutils/commons/text/StrBuilder;

    .line 3051
    return-void
.end method
