.class public abstract Lcn/xutils/commons/text/StrMatcher;
.super Ljava/lang/Object;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/text/StrMatcher$CharMatcher;,
        Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;,
        Lcn/xutils/commons/text/StrMatcher$StringMatcher;,
        Lcn/xutils/commons/text/StrMatcher$TrimMatcher;,
        Lcn/xutils/commons/text/StrMatcher$NoMatcher;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMA_MATCHER:Lcn/xutils/commons/text/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

.field private static final NONE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

.field private static final QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

.field private static final SPACE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

.field private static final SPLIT_MATCHER:Lcn/xutils/commons/text/StrMatcher;

.field private static final TAB_MATCHER:Lcn/xutils/commons/text/StrMatcher;

.field private static final TRIM_MATCHER:Lcn/xutils/commons/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->COMMA_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    .line 48
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->TAB_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    .line 52
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->SPACE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    .line 57
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->SPLIT_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    .line 61
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lcn/xutils/commons/text/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->TRIM_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    .line 65
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    .line 69
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    .line 73
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    .line 77
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lcn/xutils/commons/text/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lcn/xutils/commons/text/StrMatcher;->NONE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public static charMatcher(C)Lcn/xutils/commons/text/StrMatcher;
    .locals 1
    .param p0, "ch"    # C

    .line 168
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;
    .locals 2
    .param p0, "chars"    # Ljava/lang/String;

    .line 194
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->NONE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 198
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 200
    :cond_1
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0
.end method

.method public static varargs charSetMatcher([C)Lcn/xutils/commons/text/StrMatcher;
    .locals 2
    .param p0, "chars"    # [C

    .line 178
    invoke-static {p0}, Lcn/xutils/commons/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->NONE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0

    .line 181
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 182
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 184
    :cond_1
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0
.end method

.method public static commaMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 85
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->COMMA_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 140
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 158
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->NONE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 149
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 131
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 103
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->SPACE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 113
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->SPLIT_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 210
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->NONE_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Lcn/xutils/commons/text/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static tabMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 94
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->TAB_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 122
    sget-object v0, Lcn/xutils/commons/text/StrMatcher;->TRIM_MATCHER:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I

    .line 277
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method

.method public abstract isMatch([CIII)I
.end method
