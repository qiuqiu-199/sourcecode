.class Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;
.super Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;
.source "IdentityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserIdViewHolder"
.end annotation


# instance fields
.field private final vAddress:Landroid/widget/TextView;

.field private final vComment:Landroid/widget/TextView;

.field private final vIcon:Landroid/widget/ImageView;

.field private final vMore:Landroid/widget/ImageView;

.field private final vName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 205
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09035f

    .line 207
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vName:Landroid/widget/TextView;

    const v0, 0x7f090357

    .line 208
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vAddress:Landroid/widget/TextView;

    const v0, 0x7f09035b

    .line 209
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vComment:Landroid/widget/TextView;

    const v0, 0x7f090349

    .line 211
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vIcon:Landroid/widget/ImageView;

    const v0, 0x7f09035e

    .line 212
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vMore:Landroid/widget/ImageView;

    .line 214
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder$$Lambda$0;

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vMore:Landroid/widget/ImageView;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder$$Lambda$1;

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;---><init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;-><init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V

    return-void
.end method

.method private bindUserIdInfo(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 245
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vName:Landroid/widget/TextView;

    const v1, 0x7f110d45

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 254
    :cond_1
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :goto_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vComment:Landroid/widget/TextView;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vComment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 260
    :cond_2
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vComment:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    :goto_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->isPrimary()Z

    move-result v5

    const/4 v0, 0x0

    if-eqz v5, :cond_3

    .line 264
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 265
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    .line 267
    :cond_3
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 268
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_3
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;--->bindUserIdInfo(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 219
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getUserIdInfo()Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getUserIdInfo()Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->bindUserIdInfo(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vComment:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vAddress:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 229
    :goto_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getAutocryptPeerIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;--->bind(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bind(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 238
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->bindUserIdInfo(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V

    .line 240
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->vMore:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;--->bind(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$new$0$IdentityAdapter$UserIdViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;Landroid/view/View;)V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;->onClickIdentity(I)V

    return-void
.end method

.method final synthetic lambda$new$1$IdentityAdapter$UserIdViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;Landroid/view/View;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$UserIdViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;->onClickIdentityMore(ILandroid/view/View;)V

    return-void
.end method
