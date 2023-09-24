.class Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ReceivedSecretKeyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReceivedKeyViewHolder"
.end annotation


# instance fields
.field private final vCreation:Landroid/widget/TextView;

.field private final vEmail:Landroid/widget/TextView;

.field private final vImportButton:Landroid/view/View;

.field private final vName:Landroid/widget/TextView;

.field private final vState:Landroid/widget/ViewAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 138
    invoke-direct {v1, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901b0

    .line 140
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vName:Landroid/widget/TextView;

    const v0, 0x7f0901ae

    .line 141
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vEmail:Landroid/widget/TextView;

    const v0, 0x7f0901ac

    .line 142
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vCreation:Landroid/widget/TextView;

    const v0, 0x7f090087

    .line 144
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vImportButton:Landroid/view/View;

    const v0, 0x7f090342

    .line 145
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;---><init>(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Ljava/lang/Long;Z)V
    .locals 0

    .line 130
    invoke-direct/range {p0 .. p5}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Ljava/lang/Long;Z)V

    return-void
.end method

.method private bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Ljava/lang/Long;Z)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    .line 151
    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$200(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vName:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$200(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_0
    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$300(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vEmail:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$300(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 161
    :cond_1
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_1
    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$400(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)J

    move-result-wide v0

    const v3, 0x10015

    invoke-static {v8, v0, v1, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vCreation:Landroid/widget/TextView;

    const v3, 0x7f1108ab

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v8, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x3

    if-eqz p1, :cond_4

    .line 170
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    .line 171
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v8, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 172
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_4

    .line 174
    :cond_3
    iget-object p2, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 175
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    const/4 p2, 0x2

    invoke-virtual {v8, p2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_4

    .line 178
    :cond_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 179
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vState:Landroid/widget/ViewAnimator;

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x4

    :goto_3
    invoke-virtual {v8, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :goto_4
    if-nez p1, :cond_6

    if-eqz p0, :cond_6

    .line 183
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vImportButton:Landroid/view/View;

    new-instance p1, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;

    invoke-direct {p1, v7, p0, v9}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)V

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 190
    :cond_6
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->vImportButton:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;--->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Ljava/lang/Long;Z)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
