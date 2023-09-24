.class public Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;
.super Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;
.source "IdentityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedIdViewHolder"
.end annotation


# instance fields
.field private final vComment:Landroid/widget/TextView;

.field private final vIcon:Landroid/widget/ImageView;

.field private final vTitle:Landroid/widget/TextView;

.field public final vVerified:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 141
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901d3

    .line 143
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vVerified:Landroid/widget/ImageView;

    const v0, 0x7f0901d7

    .line 144
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vIcon:Landroid/widget/ImageView;

    const v0, 0x7f0901d6

    .line 145
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vTitle:Landroid/widget/TextView;

    const v0, 0x7f0901d5

    .line 146
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vComment:Landroid/widget/TextView;

    .line 148
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder$$Lambda$0;

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;---><init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private bindVerified(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;Z)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    if-nez p0, :cond_1

    .line 178
    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;->isVerified()Z

    move-result v4

    const/4 p0, -0x1

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vVerified:Landroid/widget/ImageView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v3, v4, v0, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vVerified:Landroid/widget/ImageView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v3, v4, v0, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    :cond_1
    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;--->bindVerified(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/linked/UriAttribute;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 163
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->getDisplayComment(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vComment:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vComment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vComment:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->getDisplayIcon()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;--->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/linked/UriAttribute;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 156
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->bindVerified(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;Z)V

    .line 158
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->getLinkedAttribute()Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/linked/UriAttribute;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;--->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$new$0$IdentityAdapter$LinkedIdViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;->onClickIdentity(I)V

    :cond_0
    return-void
.end method

.method public seekAttention()V
    .locals 6

    move-object/16 v3, p0

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 190
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vComment:Landroid/widget/TextView;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;->tintText(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 192
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;--->seekAttention()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
