.class Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "FlexibleKeyDummyItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlexibleKeyDummyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 44
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;

    const/4 v1, 0x1

    .line 45
    invoke-direct {v0, v2, p0, v1}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem$FlexibleKeyDummyViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return-void
.end method
