.class public Lcn/xutils/commons/text/FormattableUtils;
.super Ljava/lang/Object;
.source "FormattableUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SIMPLEST_FORMAT:Ljava/lang/String; = "%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;III)Ljava/util/Formatter;
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "precision"    # I

    .line 83
    const/16 v5, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcn/xutils/commons/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIIC)Ljava/util/Formatter;
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "precision"    # I
    .param p5, "padChar"    # C

    .line 100
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcn/xutils/commons/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "precision"    # I
    .param p5, "padChar"    # C
    .param p6, "ellipsis"    # Ljava/lang/CharSequence;

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p6, :cond_1

    if-ltz p4, :cond_1

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, p4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 137
    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p6, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 136
    const-string v4, "Specified ellipsis \'%1$s\' exceeds precision of %2$s"

    invoke-static {v2, v4, v3}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v2, "buf":Ljava/lang/StringBuilder;
    if-ltz p4, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p4, v3, :cond_2

    .line 140
    const-string v3, ""

    invoke-static {p6, v3}, Lcn/xutils/commons/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 141
    .local v3, "actualEllipsis":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, p4, v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .end local v3    # "actualEllipsis":Ljava/lang/CharSequence;
    :cond_2
    and-int/lit8 v3, p2, 0x1

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    .line 144
    .local v1, "leftJustify":Z
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .local v3, "i":I
    :goto_3
    if-ge v3, p3, :cond_5

    .line 145
    if-eqz v1, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    invoke-virtual {v2, v4, p5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 147
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 148
    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIILjava/lang/CharSequence;)Ljava/util/Formatter;
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "precision"    # I
    .param p5, "ellipsis"    # Ljava/lang/CharSequence;

    .line 118
    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/xutils/commons/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/util/Formattable;)Ljava/lang/String;
    .locals 2
    .param p0, "formattable"    # Ljava/util/Formattable;

    .line 66
    const-string v0, "%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
