.class public final Lcn/xutils/commons/stream/LangCollectors;
.super Ljava/lang/Object;
.source "LangCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;
    }
.end annotation


# static fields
.field private static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6IQOLYr_jtzSMuEgDj_yfSgxw2I(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B4VxwGDJqUyVnVH4qytt05PpBY8(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J1SAREoo1lxpPgOl9q024MHRoqc(Ljava/util/StringJoiner;Ljava/util/StringJoiner;)Ljava/util/StringJoiner;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SfZMidBN3GEnZ3fW7PUkjCaODLo(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$butsdy1amoCniO_bl4Y5rer202k(Ljava/util/StringJoiner;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wz_3fP0lKe0nTxShCl3CUhQhezg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z4Sacp0dHgNB96bTlXZdt5SF0q4()Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/stream/LangCollectors;->CH_NOID:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method public static joining()Ljava/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v7, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;

    new-instance v1, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda3;-><init>()V

    sget-object v5, Lcn/xutils/commons/stream/LangCollectors;->CH_NOID:Ljava/util/Set;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;Lcn/xutils/commons/stream/LangCollectors$SimpleCollector-IA;)V

    return-object v7
.end method

.method public static joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    const-string v0, ""

    invoke-static {p0, v0, v0}, Lcn/xutils/commons/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 8
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    .local p3, "toString":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/lang/String;>;"
    new-instance v7, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;

    new-instance v1, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v2, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v2, p3}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;)V

    new-instance v3, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda6;-><init>()V

    new-instance v4, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda7;-><init>()V

    sget-object v5, Lcn/xutils/commons/stream/LangCollectors;->CH_NOID:Ljava/util/Set;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;Lcn/xutils/commons/stream/LangCollectors$SimpleCollector-IA;)V

    return-object v7
.end method

.method static synthetic lambda$joining$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;

    .line 159
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$joining$1(Ljava/util/function/Function;Ljava/util/StringJoiner;Ljava/lang/Object;)V
    .locals 1
    .param p0, "toString"    # Ljava/util/function/Function;
    .param p1, "a"    # Ljava/util/StringJoiner;
    .param p2, "t"    # Ljava/lang/Object;

    .line 159
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method
