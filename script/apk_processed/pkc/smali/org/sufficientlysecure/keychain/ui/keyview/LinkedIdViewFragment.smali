.class public Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;
.source "LinkedIdViewFragment.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;,
        Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final ARG_IS_SECRET:Ljava/lang/String; = "verified"

.field private static final ARG_LID_RANK:Ljava/lang/String; = "rank"

.field private static final ARG_MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"


# instance fields
.field private certifyKeyId:J

.field private isSecret:Z

.field private lidRank:I

.field private linkedId:Lorg/sufficientlysecure/keychain/linked/UriAttribute;

.field private linkedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

.field private mVerificationState:Z

.field private masterKeyId:J

.field private taskInProgress:Landroid/os/AsyncTask;

.field private viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 113
    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;-><init>(ILjava/lang/Integer;)V

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->mVerificationState:Z

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;---><init>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$1000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->taskInProgress:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)J
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->masterKeyId:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->linkedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    return-object p0
.end method

.method static synthetic access$900(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->isSecret:Z

    return p0
.end method

.method private initiateCertifying()V
    .locals 8

    move-object/16 v5, p0

    .line 437
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->isSecret:Z

    if-eqz v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getSelectedKeyId()J

    move-result-wide v0

    iput-wide v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->certifyKeyId:J

    .line 443
    iget-wide v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->certifyKeyId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->certifyKeyId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->CERTIFYING:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->setVerifyingState(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;Z)V

    .line 453
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->cryptoOperation()V

    return-void

    .line 444
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 445
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$200(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/SubtleAttentionSeeker;->tintBackground(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 447
    :cond_3
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110c9b

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_1
    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->initiateCertifying()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadIdentity(Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;Z)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 157
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->linkedId:Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    .line 159
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->linkedId:Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    check-cast v4, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;->mResource:Lorg/sufficientlysecure/keychain/linked/LinkedResource;

    .line 160
    check-cast v4, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->linkedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    .line 162
    iget-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->isSecret:Z

    if-nez v4, :cond_1

    const/4 v4, -0x1

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->mLinkedIdHolder:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vVerified:Landroid/widget/ImageView;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v5, v1, v0, v2, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->mLinkedIdHolder:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vVerified:Landroid/widget/ImageView;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v5, v1, v0, v2, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->mLinkedIdHolder:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->vVerified:Landroid/widget/ImageView;

    const v5, 0x7f080119

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    :goto_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->mLinkedIdHolder:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->linkedId:Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    invoke-virtual {v4, v5, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/linked/UriAttribute;)V

    const/4 v4, 0x0

    .line 176
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->setShowVerifying(Z)V

    .line 178
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->linkedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->isViewable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$100(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$100(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$3;

    invoke-direct {v5, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$100(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->loadIdentity(Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(JIZ)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;
    .locals 6

    move-wide/16 v3, p0

    move/16 v5, p2

    move/16 p0, p3

    .line 99
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;-><init>()V

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rank"

    .line 102
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "verified"

    .line 103
    invoke-virtual {v1, v5, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "master_key_id"

    .line 104
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->newInstance(JIZ)Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLinkedIdInfoLoaded(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    if-nez v4, :cond_0

    const-string v4, "error loading identity"

    const/4 v0, 0x0

    .line 138
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v0, "Error loading linked identity!"

    const/16 v1, 0xdac

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    .line 140
    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 141
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->finishFragment()V

    return-void

    .line 145
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->getLinkedAttribute()Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;

    move-result-object v0

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;->isVerified()Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->loadIdentity(Lorg/sufficientlysecure/keychain/linked/LinkedAttribute;Z)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onLinkedIdInfoLoaded(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadCertDetails(Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 372
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$600(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;

    move-result-object v0

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->isSecret:Z

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;->setData(Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;Z)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onLoadCertDetails(Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$LinkedIdViewFragment(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->onLinkedIdInfoLoaded(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;)V

    return-void
.end method

.method final synthetic bridge$lambda$1$LinkedIdViewFragment(Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->onLoadCertDetails(Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;)V

    return-void
.end method

.method public createOperationInput()Landroid/os/Parcelable;
    .locals 6

    move-object/16 v3, p0

    .line 469
    iget-wide v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->masterKeyId:J

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->linkedId:Lorg/sufficientlysecure/keychain/linked/UriAttribute;

    .line 470
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/linked/UriAttribute;->toUserAttribute()Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 469
    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->createForUserAttributes(JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;

    move-result-object v0

    .line 473
    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->certifyKeyId:J

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;->builder(J)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;

    move-result-object v1

    .line 474
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;->addActions(Ljava/util/Collection;)V

    .line 476
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->createOperationInput()Landroid/os/Parcelable;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishFragment()V
    .locals 5

    move-object/16 v2, p0

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$2;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->finishFragment()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$finishFragment$0$LinkedIdViewFragment()V
    .locals 3

    .line 150
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    const-string v1, "linked_id"

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method final synthetic lambda$loadIdentity$1$LinkedIdViewFragment(Landroid/view/View;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->linkedResource:Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;->getViewIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$3$LinkedIdViewFragment(Landroid/view/View;)V
    .locals 0

    .line 361
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->verifyResource()V

    return-void
.end method

.method final synthetic lambda$onCreateView$4$LinkedIdViewFragment(Landroid/view/View;)V
    .locals 0

    .line 362
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->verifyResource()V

    return-void
.end method

.method final synthetic lambda$onCreateView$5$LinkedIdViewFragment(Landroid/view/View;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->initiateCertifying()V

    return-void
.end method

.method final synthetic lambda$setShowVerifying$2$LinkedIdViewFragment()V
    .locals 3

    .line 311
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "verification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 129
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v4}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v5

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;

    invoke-virtual {v5, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;

    .line 132
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->masterKeyId:J

    iget v3, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->lidRank:I

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->getLinkedIdInfo(Landroid/content/Context;JI)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$0;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    invoke-virtual {v0, v4, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 133
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->getCertifyingKeys(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v5

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$1;->get$Lambda(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;)Landroid/arch/lifecycle/Observer;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 340
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->setShowVerifying(Z)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onBackStackChanged()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 118
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "rank"

    .line 121
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->lidRank:I

    const-string v0, "verified"

    .line 123
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->isSecret:Z

    const-string v0, "master_key_id"

    .line 124
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->masterKeyId:J

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    const p0, 0x7f0c00a2

    const/4 v0, 0x0

    .line 345
    invoke-virtual {v4, p0, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 346
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    .line 348
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 351
    :cond_0
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-direct {p0, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    .line 352
    iget-object p0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p0, 0x7f0902eb

    .line 354
    invoke-virtual {v4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f06001c

    .line 355
    invoke-static {v5, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const p0, 0x7f0902ea

    .line 357
    invoke-virtual {v4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f06001f

    .line 358
    invoke-static {v5, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 361
    iget-object p0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$300(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$5;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object p0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$400(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$6;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object p0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$500(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$7;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-static {v3}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;

    .line 366
    iget-wide v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->masterKeyId:J

    iget v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->lidRank:I

    invoke-virtual {p0, v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->getCertDetails(Landroid/content/Context;JI)Landroid/arch/lifecycle/LiveData;

    move-result-object v5

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$8;

    invoke-direct {p0, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$8;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    invoke-virtual {v5, v3, p0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 4

    move-object/16 v1, p0

    .line 459
    invoke-super {v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onCryptoOperationCancelled()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onCryptoOperationCancelled()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 462
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->setShowVerifying(Z)V

    return-void
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 487
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 481
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x1

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setShowVerifying(Z)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    if-nez v4, :cond_2

    .line 306
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->taskInProgress:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    .line 307
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->taskInProgress:Landroid/os/AsyncTask;

    invoke-virtual {v4, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v4, 0x0

    .line 308
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->taskInProgress:Landroid/os/AsyncTask;

    .line 310
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 311
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$4;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    iget-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->mVerificationState:Z

    if-nez v4, :cond_1

    return-void

    .line 317
    :cond_1
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->mVerificationState:Z

    .line 319
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->showButton(I)V

    .line 320
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$200(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object v4

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->isSecret:Z

    invoke-virtual {v4, v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->showVerifyingContainer(Landroid/content/Context;ZZ)V

    return-void

    .line 325
    :cond_2
    iget-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->mVerificationState:Z

    if-eqz v4, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x1

    .line 328
    iput-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->mVerificationState:Z

    .line 330
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "verification"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 332
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 333
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 334
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->isSecret:Z

    invoke-virtual {v0, v1, v4, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->showVerifyingContainer(Landroid/content/Context;ZZ)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->setShowVerifying(Z)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method verifyResource()V
    .locals 7

    move-object/16 v4, p0

    .line 378
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->taskInProgress:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 382
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->setShowVerifying(Z)V

    .line 384
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->access$200(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->viewHolder:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->VERIFYING:Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;

    iget-boolean v3, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->isSecret:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->setVerifyingState(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;Z)V

    .line 387
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 431
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;->taskInProgress:Landroid/os/AsyncTask;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;--->verifyResource()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
