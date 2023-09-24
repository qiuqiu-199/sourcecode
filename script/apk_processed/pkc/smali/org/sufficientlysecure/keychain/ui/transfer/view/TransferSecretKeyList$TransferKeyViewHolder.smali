.class Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TransferSecretKeyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransferKeyViewHolder"
.end annotation


# instance fields
.field private final vCreation:Landroid/widget/TextView;

.field private final vEmail:Landroid/widget/TextView;

.field private final vName:Landroid/widget/TextView;

.field private final vSendButton:Landroid/view/View;

.field private final vState:Landroid/widget/ViewAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 146
    invoke-direct {v1, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901b0

    .line 148
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vName:Landroid/widget/TextView;

    const v0, 0x7f0901ae

    .line 149
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vEmail:Landroid/widget/TextView;

    const v0, 0x7f0901ac

    .line 150
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vCreation:Landroid/widget/TextView;

    const v0, 0x7f0900a0

    .line 152
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vSendButton:Landroid/view/View;

    const v0, 0x7f090342

    .line 153
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;---><init>(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;Landroid/content/Context;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Ljava/lang/Long;ZZ)V
    .locals 0

    .line 138
    invoke-direct/range {p0 .. p6}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Ljava/lang/Long;ZZ)V

    return-void
.end method

.method private bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Ljava/lang/Long;ZZ)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    .line 159
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :goto_0
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vEmail:Landroid/widget/TextView;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_1
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :goto_1
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->creation()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    const v3, 0x10015

    invoke-static {v9, v0, v1, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vCreation:Landroid/widget/TextView;

    const v3, 0x7f1108ab

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v9, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    const v0, 0x3e4ccccd    # 0.2f

    if-eqz p3, :cond_2

    .line 178
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    .line 179
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    invoke-virtual {v10, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 180
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vSendButton:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v1, 0x3

    if-eqz p1, :cond_5

    .line 185
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    .line 186
    iget-object p3, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 187
    iget-object p3, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_4

    .line 189
    :cond_4
    iget-object p2, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 190
    iget-object p2, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_4

    .line 193
    :cond_5
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 194
    iget-object p3, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p3, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :goto_4
    if-nez p1, :cond_7

    if-eqz p0, :cond_7

    .line 198
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vSendButton:Landroid/view/View;

    new-instance p1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;

    invoke-direct {p1, p0, v10}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    invoke-virtual {v9, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 201
    :cond_7
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->vSendButton:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;--->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Ljava/lang/Long;ZZ)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$bind$0$TransferSecretKeyList$TransferKeyViewHolder(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Landroid/view/View;)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;->onUiClickTransferKey(J)V

    return-void
.end method
