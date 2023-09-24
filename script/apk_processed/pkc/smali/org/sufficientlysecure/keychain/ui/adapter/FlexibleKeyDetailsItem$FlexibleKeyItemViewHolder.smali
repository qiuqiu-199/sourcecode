.class Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "FlexibleKeyDetailsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlexibleKeyItemViewHolder"
.end annotation


# instance fields
.field private final keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

.field private final vCreationDate:Landroid/widget/TextView;

.field private final vMainUserId:Landroid/widget/TextView;

.field private final vMainUserIdRest:Landroid/widget/TextView;

.field private final vStatusIcon:Landroid/widget/ImageView;

.field private final vTrustIdIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 80
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    .line 81
    invoke-direct {v0, v2, p0}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    const v1, 0x7f0901b0

    .line 83
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vMainUserId:Landroid/widget/TextView;

    const v1, 0x7f0901ae

    .line 84
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vMainUserIdRest:Landroid/widget/TextView;

    const v1, 0x7f0901b1

    .line 85
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f0901ac

    .line 86
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vCreationDate:Landroid/widget/TextView;

    const v1, 0x7f0901b2

    .line 87
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vTrustIdIcon:Landroid/widget/ImageView;

    .line 89
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 93
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->setEnabled(Z)V

    .line 95
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->setKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    .line 96
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->setHighlightString(Ljava/lang/String;)V

    .line 97
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vMainUserId:Landroid/widget/TextView;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vMainUserIdRest:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatUserId(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 98
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vCreationDate:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatCreationDate(Landroid/widget/TextView;)V

    .line 99
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/widget/TextView;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vMainUserId:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v0, v5, v2

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vMainUserIdRest:Landroid/widget/TextView;

    aput-object v0, v5, v1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vCreationDate:Landroid/widget/TextView;

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->greyInvalidKeys(Ljava/util/List;)V

    .line 100
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatStatusIcon(Landroid/widget/ImageView;)V

    .line 101
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;->vTrustIdIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatTrustIcon(Landroid/widget/ImageView;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem$FlexibleKeyItemViewHolder;--->bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
