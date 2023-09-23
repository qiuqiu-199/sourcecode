.class public abstract Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;
.super Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;
.source "FlexibleKeyItem.java"

# interfaces
.implements Leu/davidea/flexibleadapter/items/ISectionable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FlexibleSectionableKeyItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem<",
        "TVH;>;",
        "Leu/davidea/flexibleadapter/items/ISectionable<",
        "TVH;",
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;",
        ">;"
    }
.end annotation


# instance fields
.field header:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 16
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;-><init>()V

    .line 17
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;->header:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic getHeader()Leu/davidea/flexibleadapter/items/IHeader;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;->getHeader()Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;
    .locals 4

    move-object/16 v1, p0

    .line 22
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;->header:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;--->getHeader()Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic setHeader(Leu/davidea/flexibleadapter/items/IHeader;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;->setHeader(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V

    return-void
.end method

.method public setHeader(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 27
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;->header:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;--->setHeader(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
