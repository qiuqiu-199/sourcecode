.class public final Landroidx/work/Data$Builder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Landroidx/work/Data;
    .locals 2

    .line 647
    new-instance v0, Landroidx/work/Data;

    iget-object v1, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Landroidx/work/Data;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public putAll(Landroidx/work/Data;)Landroidx/work/Data$Builder;
    .locals 0

    .line 588
    invoke-static {p1}, Landroidx/work/Data;->access$500(Landroidx/work/Data;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/Data$Builder;->putAll(Ljava/util/Map;)Landroidx/work/Data$Builder;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Landroidx/work/Data$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/work/Data$Builder;"
        }
    .end annotation

    .line 601
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 602
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 609
    const-class v3, Ljava/lang/Boolean;

    if-eq v2, v3, :cond_7

    const-class v3, Ljava/lang/Integer;

    if-eq v2, v3, :cond_7

    const-class v3, Ljava/lang/Long;

    if-eq v2, v3, :cond_7

    const-class v3, Ljava/lang/Float;

    if-eq v2, v3, :cond_7

    const-class v3, Ljava/lang/Double;

    if-eq v2, v3, :cond_7

    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_7

    const-class v3, [Ljava/lang/Boolean;

    if-eq v2, v3, :cond_7

    const-class v3, [Ljava/lang/Integer;

    if-eq v2, v3, :cond_7

    const-class v3, [Ljava/lang/Long;

    if-eq v2, v3, :cond_7

    const-class v3, [Ljava/lang/Float;

    if-eq v2, v3, :cond_7

    const-class v3, [Ljava/lang/Double;

    if-eq v2, v3, :cond_7

    const-class v3, [Ljava/lang/String;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 622
    :cond_1
    const-class v3, [Z

    if-ne v2, v3, :cond_2

    .line 623
    iget-object v2, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    check-cast v0, [Z

    invoke-static {v0}, Landroidx/work/Data;->access$000([Z)[Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 624
    :cond_2
    const-class v3, [I

    if-ne v2, v3, :cond_3

    .line 625
    iget-object v2, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    check-cast v0, [I

    invoke-static {v0}, Landroidx/work/Data;->access$100([I)[Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 626
    :cond_3
    const-class v3, [J

    if-ne v2, v3, :cond_4

    .line 627
    iget-object v2, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    check-cast v0, [J

    invoke-static {v0}, Landroidx/work/Data;->access$200([J)[Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 628
    :cond_4
    const-class v3, [F

    if-ne v2, v3, :cond_5

    .line 629
    iget-object v2, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    check-cast v0, [F

    invoke-static {v0}, Landroidx/work/Data;->access$300([F)[Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 630
    :cond_5
    const-class v3, [D

    if-ne v2, v3, :cond_6

    .line 631
    iget-object v2, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    check-cast v0, [D

    invoke-static {v0}, Landroidx/work/Data;->access$400([D)[Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 633
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key %s has invalid type %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 634
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :cond_7
    :goto_1
    iget-object v2, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;
    .locals 1

    .line 562
    iget-object v0, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
