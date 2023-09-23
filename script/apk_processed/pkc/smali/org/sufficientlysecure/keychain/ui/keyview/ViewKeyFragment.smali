.class public Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewKeyFragment.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private displayedContextMenuPosition:Ljava/lang/Integer;

.field identitiesAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

.field private identitiesCardView:Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

.field private keyStatusCardView:Landroid/view/View;

.field private keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

.field private keyserverStatusView:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;

.field private showingExpandedInfo:Z

.field private subkeyStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

.field private systemContactCard:Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;

.field private unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 70
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showIdentityInfo(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;ILandroid/view/View;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showIdentityContextMenu(ILandroid/view/View;)V

    return-void
.end method

.method private addLinkedIdentity()V
    .locals 7

    move-object/16 v4, p0

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_id"

    .line 284
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 285
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->addLinkedIdentity()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private displayExpandedInfo(Z)V
    .locals 8

    move-object/16 v5, p0

    move/16 v6, p1

    .line 175
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->subkeyStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keyCertify:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    .line 176
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->subkeyStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keysSign:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->subkeyStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keysSign:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    .line 177
    :goto_0
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->subkeyStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keysEncrypt:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->subkeyStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keysEncrypt:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    .line 179
    :goto_1
    invoke-direct {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->getKeyDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    move-result-object v0

    .line 180
    invoke-direct {v5, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->getKeyDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    move-result-object v1

    .line 181
    invoke-direct {v5, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->getKeyDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    move-result-object v2

    if-nez v6, :cond_5

    .line 184
    sget-object v6, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    if-ne v0, v6, :cond_2

    move-object v0, v3

    .line 187
    :cond_2
    sget-object v6, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    if-ne v0, v6, :cond_3

    move-object v1, v3

    move-object v2, v1

    .line 191
    :cond_3
    sget-object v6, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    if-ne v1, v6, :cond_4

    move-object v1, v3

    .line 194
    :cond_4
    sget-object v6, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    if-ne v2, v6, :cond_5

    move-object v2, v3

    .line 199
    :cond_5
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v6, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->showExpandedState(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V

    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->displayExpandedInfo(Z)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKeyDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-nez v3, :cond_0

    .line 214
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v3

    .line 217
    :cond_0
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mIsRevoked:Z

    if-eqz v0, :cond_1

    .line 218
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v3

    .line 220
    :cond_1
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mIsExpired:Z

    if-eqz v0, :cond_2

    .line 221
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v3

    .line 223
    :cond_2
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v0, :cond_3

    .line 224
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v3

    .line 226
    :cond_3
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v0, v1, :cond_4

    .line 227
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v3

    .line 229
    :cond_4
    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v3, v0, :cond_5

    .line 230
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v3

    .line 233
    :cond_5
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->getKeyDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private launchAndroidContactActivity(J)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 381
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 382
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->launchAndroidContactActivity(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;
    .locals 4

    .line 85
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onKeyHealthClick()V
    .locals 4

    move-object/16 v1, p0

    .line 203
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showingExpandedInfo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showingExpandedInfo:Z

    .line 205
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->hideExpandedInfo()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showingExpandedInfo:Z

    .line 208
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->displayExpandedInfo(Z)V

    :goto_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onKeyHealthClick()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadIdentityInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 299
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->setData(Ljava/util/List;Z)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onLoadIdentityInfo(Ljava/util/List;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadKeyMetadata(Lorg/sufficientlysecure/keychain/model/KeyMetadata;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 314
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyserverStatusView:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setDisplayStatusUnknown()V

    goto :goto_1

    .line 315
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->hasBeenUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyserverStatusView:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setDisplayStatusPublished()V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyserverStatusView:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setDisplayStatusNotPublished()V

    .line 321
    :goto_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyserverStatusView:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/KeyMetadata;->last_updated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setLastUpdated(Ljava/util/Date;)V

    goto :goto_1

    .line 323
    :cond_2
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyserverStatusView:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setDisplayStatusUnknown()V

    :goto_1
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onLoadKeyMetadata(Lorg/sufficientlysecure/keychain/model/KeyMetadata;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadSubkeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    if-nez v6, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusCardView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iput-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->subkeyStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

    .line 147
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keyHealthStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    .line 149
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 150
    :goto_0
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    if-ne v0, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 152
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keyCertify:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 154
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V

    .line 155
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keyCertify:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    invoke-virtual {v0, v6}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setPrimarySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V

    .line 156
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setShowExpander(Z)V

    goto :goto_3

    .line 158
    :cond_4
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V

    .line 159
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setShowExpander(Z)V

    .line 160
    invoke-direct {v5, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->displayExpandedInfo(Z)V

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    .line 163
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V

    .line 164
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keyCertify:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mExpiry:Ljava/util/Date;

    invoke-virtual {v0, v6}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setPrimaryExpiryDate(Ljava/util/Date;)V

    .line 165
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setShowExpander(Z)V

    .line 166
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->hideExpandedInfo()V

    goto :goto_3

    .line 168
    :cond_6
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V

    .line 169
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    if-eq v0, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setShowExpander(Z)V

    .line 170
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->hideExpandedInfo()V

    :goto_3
    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onLoadSubkeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadSystemContact(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    if-nez v4, :cond_0

    .line 304
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->systemContactCard:Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->hideLinkedSystemContact()V

    return-void

    .line 308
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->systemContactCard:Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;->contactName:Ljava/lang/String;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;->contactPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->showLinkedSystemContact(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->systemContactCard:Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$7;

    invoke-direct {v1, v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;)V

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->setSystemContactClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onLoadSystemContact(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-nez v3, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 245
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getExperimentalEnableLinkedIdentities()Z

    move-result v0

    .line 246
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v3

    .line 247
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesCardView:Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->setAddLinkedIdButtonVisible(Z)V

    .line 248
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesCardView:Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$6;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->setIdentitiesCardListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showIdentityContextMenu(ILandroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 266
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showContextMenu(ILandroid/view/View;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->showIdentityContextMenu(ILandroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showIdentityInfo(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 252
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->getInfo(I)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;

    move-result-object v2

    .line 253
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    if-eqz v0, :cond_0

    .line 254
    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showLinkedId(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;)V

    goto :goto_0

    .line 255
    :cond_0
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    if-eqz v0, :cond_1

    .line 256
    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showUserIdInfo(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V

    goto :goto_0

    .line 257
    :cond_1
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    if-eqz v0, :cond_2

    .line 258
    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getAutocryptPeerIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 260
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->showIdentityInfo(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showLinkedId(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 270
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->getMasterKeyId()J

    move-result-wide v0

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->getRank()I

    move-result v4

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v2

    invoke-static {v0, v1, v4, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->newInstance(JIZ)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    move-result-object v4

    const-string v0, "linked_id"

    .line 272
    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->switchToFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->showLinkedId(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showUserIdInfo(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 276
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 277
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;->isVerified()Z

    move-result v2

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->newInstance(ZZ)Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;

    move-result-object v2

    const-string v0, "userIdInfoDialog"

    .line 278
    invoke-virtual {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->showUserIdInfo(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$UserIdInfo;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$ViewKeyFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method final synthetic bridge$lambda$1$ViewKeyFragment(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->onLoadIdentityInfo(Ljava/util/List;)V

    return-void
.end method

.method final synthetic bridge$lambda$2$ViewKeyFragment(Lorg/sufficientlysecure/keychain/model/KeyMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->onLoadKeyMetadata(Lorg/sufficientlysecure/keychain/model/KeyMetadata;)V

    return-void
.end method

.method final synthetic bridge$lambda$3$ViewKeyFragment(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->onLoadSystemContact(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;)V

    return-void
.end method

.method final synthetic bridge$lambda$4$ViewKeyFragment(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->onLoadSubkeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$0$ViewKeyFragment(Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->onKeyHealthClick()V

    return-void
.end method

.method final synthetic lambda$onLoadSystemContact$2$ViewKeyFragment(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;Landroid/view/View;)V
    .locals 0

    .line 309
    iget-wide p1, p1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;->contactId:J

    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->launchAndroidContactActivity(J)V

    return-void
.end method

.method final synthetic lambda$onLoadUnifiedKeyInfo$1$ViewKeyFragment(Landroid/view/View;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->addLinkedIdentity()V

    return-void
.end method

.method final synthetic lambda$showContextMenu$5$ViewKeyFragment(Landroid/support/v7/widget/PopupMenu;)V
    .locals 0

    const/4 p1, 0x0

    .line 357
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->displayedContextMenuPosition:Ljava/lang/Integer;

    return-void
.end method

.method final synthetic lambda$showDialogFragment$4$ViewKeyFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$switchToFragment$3$ViewKeyFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    .line 329
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090375

    .line 330
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 331
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 120
    invoke-super {v4, v5}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    .line 124
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 125
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    .line 127
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$1;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-virtual {v0, v4, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 129
    invoke-static {v4}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;

    .line 131
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getExperimentalEnableLinkedIdentities()Z

    move-result v2

    .line 132
    invoke-virtual {v1, v5, v0, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->getIdentityInfo(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;Z)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$2;

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-virtual {v2, v4, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 133
    invoke-virtual {v1, v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->getKeyserverStatus(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$3;

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-virtual {v2, v4, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 134
    invoke-virtual {v1, v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->getSystemContactInfo(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$4;

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-virtual {v2, v4, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 135
    invoke-virtual {v1, v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->getSubkeyStatus(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;

    move-result-object v5

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$5;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-virtual {v5, v4, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    if-eqz p0, :cond_0

    const-string v0, "operation_result"

    .line 338
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "operation_result"

    .line 339
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 340
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 342
    :cond_0
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickForgetIdentity(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 289
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->getInfo(I)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;

    if-nez v3, :cond_0

    const-string v3, "got a \'forget\' click on a bad trust id"

    const/4 v0, 0x0

    .line 291
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 295
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    move-result-object v0

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$AutocryptPeerInfo;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->deleteByIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onClickForgetIdentity(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0112

    const/4 v0, 0x0

    .line 90
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900bd

    .line 92
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesCardView:Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

    const v3, 0x7f0901db

    .line 93
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->systemContactCard:Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;

    const v3, 0x7f0902fb

    .line 94
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusCardView:Landroid/view/View;

    const v3, 0x7f0901b3

    .line 95
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    const v3, 0x7f0901b4

    .line 96
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyserverStatusView:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;

    .line 98
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-direct {v3, p0, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

    .line 109
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesCardView:Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->identitiesAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

    invoke-virtual {v3, p0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->setIdentitiesAdapter(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;)V

    .line 111
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusCardView:Landroid/view/View;

    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->keyStatusHealth:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-virtual {v3, p0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setOnHealthClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 363
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->displayedContextMenuPosition:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v0, 0x7f09005d

    if-eq v3, v0, :cond_1

    return v1

    .line 369
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->displayedContextMenuPosition:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x0

    .line 370
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->displayedContextMenuPosition:Ljava/lang/Integer;

    .line 371
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->onClickForgetIdentity(I)V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->onMenuItemClick(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showContextMenu(ILandroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 352
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->displayedContextMenuPosition:Ljava/lang/Integer;

    .line 354
    new-instance v2, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v3, 0x7f0d000b

    .line 355
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/PopupMenu;->inflate(I)V

    .line 356
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 357
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$10;

    invoke-direct {v3, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$10;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/PopupMenu;->setOnDismissListener(Landroid/support/v7/widget/PopupMenu$OnDismissListener;)V

    .line 358
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->showContextMenu(ILandroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 347
    sget-object v0, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;->INTERFACE:Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$9;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;->runnableRunDelayed(Ljava/lang/Runnable;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public switchToFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$8;

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment$$Lambda$8;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;--->switchToFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
