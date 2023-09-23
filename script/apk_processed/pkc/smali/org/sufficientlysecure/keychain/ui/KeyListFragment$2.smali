.class Lorg/sufficientlysecure/keychain/ui/KeyListFragment$2;
.super Leu/davidea/flexibleadapter/FlexibleAdapter;
.source "KeyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->onLoadKeyItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/FlexibleAdapter<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;Ljava/util/List;Ljava/lang/Object;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 276
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-direct {v0, v2, p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;Ljava/lang/Object;Z)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;Ljava/util/List;Ljava/lang/Object;Z)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getItemId(I)J
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 279
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$2;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;

    .line 280
    instance-of v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    if-eqz v1, :cond_0

    .line 281
    check-cast v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    return-wide v0

    .line 283
    :cond_0
    invoke-super {v2, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$2;--->getItemId(I)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
