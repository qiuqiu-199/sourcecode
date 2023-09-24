.class public Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;
.source "SecurityTokenChangePinOperationActivity.java"


# static fields
.field public static final EXTRA_CHANGE_PIN_PARCEL:Ljava/lang/String; = "change_pin_parcel"

.field public static final RESULT_TOKEN_INFO:Ljava/lang/String; = "token_info"


# instance fields
.field private changePinInput:Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;

.field public nfcGuideView:Lnordpol/android/NfcGuideView;

.field private resultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

.field public vAnimator:Landroid/widget/ViewAnimator;

.field public vErrorText:Landroid/widget/TextView;

.field private vErrorTextPin:Landroid/widget/TextView;

.field public vErrorTryAgainButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 50
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->resumeTagHandling()V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->resultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    return-object p0
.end method


# virtual methods
.method protected doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 143
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->changePinInput:Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;->getAdminPin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->changePinInput:Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;->getNewPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/ModifyPinTokenOp;->modifyPw1Pin([B)V

    .line 146
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readTokenInfo()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->resultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;--->doSecurityTokenInBackground(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c00e0

    .line 131
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initTheme()V
    .locals 6

    move-object/16 v3, p0

    .line 67
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;-><init>(Landroid/app/Activity;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    .line 68
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    const v1, 0x7f12017b

    const v2, 0x7f120178

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->setThemes(II)V

    .line 70
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->changeTheme()Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;--->initTheme()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 75
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "NfcOperationActivity.onCreate"

    const/4 v0, 0x0

    .line 76
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const v3, 0x7f09024d

    .line 78
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnordpol/android/NfcGuideView;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    .line 81
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/OrientationUtils;->lockCurrentOrientation(Landroid/app/Activity;)V

    .line 83
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->setFinishOnTouchOutside(Z)V

    .line 85
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v1, 0x80

    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    const v3, 0x7f110c8b

    .line 87
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->setTitle(I)V

    const v3, 0x7f090365

    .line 89
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewAnimator;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    .line 90
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 92
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    sget-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->STARTING_POSITION:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v3, v0}, Lnordpol/android/NfcGuideView;->setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V

    const v3, 0x7f0902b2

    .line 94
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vErrorText:Landroid/widget/TextView;

    const v3, 0x7f0902b6

    .line 95
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vErrorTextPin:Landroid/widget/TextView;

    const v3, 0x7f0902b3

    .line 96
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vErrorTryAgainButton:Landroid/widget/Button;

    .line 97
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vErrorTryAgainButton:Landroid/widget/Button;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0902ac

    .line 108
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 109
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$2;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$2;-><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0902b5

    .line 116
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$3;-><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "change_pin_parcel"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->changePinInput:Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;

    return-void
.end method

.method protected onSecurityTokenError(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 192
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->pauseTagHandling()V

    .line 194
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vErrorText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f110c8c

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 197
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lnordpol/android/NfcGuideView;->setVisibility(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;--->onSecurityTokenError(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 202
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->resultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    .line 204
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->pauseTagHandling()V

    .line 206
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vErrorTextPin:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 209
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnordpol/android/NfcGuideView;->setVisibility(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;--->onSecurityTokenPinError(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected final onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "token_info"

    .line 152
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->resultTokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 153
    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 158
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    sget-object v1, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->DONE:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v0, v1}, Lnordpol/android/NfcGuideView;->setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V

    .line 160
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPersistentConnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->finish()V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->clearSecureMessaging()V

    .line 165
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$4;

    invoke-direct {v0, v3, v4}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$4;-><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 186
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;--->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityTokenPreExecute()V
    .locals 5

    move-object/16 v2, p0

    .line 137
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 138
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;->nfcGuideView:Lnordpol/android/NfcGuideView;

    sget-object v1, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->TRANSFERRING:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v0, v1}, Lnordpol/android/NfcGuideView;->setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;--->onSecurityTokenPreExecute()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
