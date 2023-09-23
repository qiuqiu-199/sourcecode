.class Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "FlexibleKeyHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlexibleHeaderViewHolder"
.end annotation


# instance fields
.field final text1:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x1

    .line 61
    invoke-direct {v1, v2, v3, v0}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V

    .line 62
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;->text1:Landroid/widget/TextView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader$FlexibleHeaderViewHolder;---><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
