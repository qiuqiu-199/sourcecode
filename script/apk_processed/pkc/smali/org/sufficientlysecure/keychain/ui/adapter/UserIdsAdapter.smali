.class public Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserIdsAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mShowStatusImages:Z

.field private mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 51
    invoke-direct {v0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->context:Landroid/content/Context;

    .line 54
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->mShowStatusImages:Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;---><init>(Landroid/content/Context;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getCount()I
    .locals 4

    move-object/16 v1, p0

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->getCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getIsRevoked(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 216
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->is_revoked()Z

    move-result v2

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->getIsRevoked(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getIsRevokedPending(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 184
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getUserId(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableRevokeUserIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->getIsRevokedPending(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 65
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->getItem(I)Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemId(I)J
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 70
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->master_key_id()J

    move-result-wide v0

    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->getItemId(I)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUserId(I)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 212
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->user_id()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->getUserId(I)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVerificationStatus(I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 220
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->getVerificationStatus(I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    move-object/16 v12, p0

    move/16 v13, p1

    move-object/16 v14, p2

    move-object/16 p0, p3

    const/4 v0, 0x0

    if-eqz v14, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v14, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c010f

    invoke-virtual {v14, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    :goto_0
    const p0, 0x7f09035f

    .line 88
    invoke-virtual {v14, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v1, 0x7f090357

    .line 89
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09035b

    .line 90
    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090359

    .line 91
    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090356

    .line 92
    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewAnimator;

    const v5, 0x7f09035c

    .line 94
    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x8

    .line 95
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    invoke-virtual {v12, v13}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->name()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 100
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const v7, 0x7f110d45

    .line 102
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :goto_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->email()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 105
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->email()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 108
    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->comment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 111
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->comment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_3
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->is_primary()Z

    move-result v6

    .line 118
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->is_revoked()Z

    move-result v7

    .line 121
    iget-object v8, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    .line 122
    iget-object v8, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_5

    .line 124
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->user_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 125
    :goto_5
    iget-object v11, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableRevokeUserIds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->user_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v10, :cond_6

    move v6, v8

    :cond_6
    if-eqz v5, :cond_7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    :cond_7
    const/4 v5, 0x2

    .line 140
    invoke-virtual {v4, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_6

    .line 142
    :cond_8
    iget-boolean v5, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->mShowStatusImages:Z

    invoke-virtual {v4, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :goto_6
    const/4 v4, 0x0

    if-eqz v7, :cond_9

    .line 147
    iget-object v13, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->context:Landroid/content/Context;

    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const v6, 0x7f060051

    invoke-static {v13, v3, v4, v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_8

    .line 154
    :cond_9
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 155
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 156
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v6, :cond_a

    .line 159
    invoke-virtual {p0, v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 160
    invoke-virtual {v1, v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_7

    .line 162
    :cond_a
    invoke-virtual {p0, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 163
    invoke-virtual {v1, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 166
    :goto_7
    invoke-virtual {v12, v13}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getVerificationStatus(I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v13

    .line 167
    sget-object p0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedKeyRing$VerificationStatus:[I

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->ordinal()I

    move-result v13

    aget v13, p0, v13

    const/4 p0, -0x1

    packed-switch v13, :pswitch_data_0

    .line 175
    iget-object v13, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->context:Landroid/content/Context;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INVALID:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v13, v3, v4, v0, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    goto :goto_8

    .line 172
    :pswitch_0
    iget-object v13, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->context:Landroid/content/Context;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v13, v3, v4, v0, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    goto :goto_8

    .line 169
    :pswitch_1
    iget-object v13, v12, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->context:Landroid/content/Context;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v13, v3, v4, v0, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    :goto_8
    return-object v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 74
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->data:Ljava/util/List;

    .line 75
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->setData(Ljava/util/List;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEditMode(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 208
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;--->setEditMode(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
