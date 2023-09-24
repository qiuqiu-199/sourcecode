.class public Lorg/inaturalist/android/ProfileEditor;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProfileEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;
    }
.end annotation


# static fields
.field private static final CAPTURE_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ProfileEditor"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mFileUri:Landroid/net/Uri;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$UriBundler;
    .end annotation
.end field

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mUserBio:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mUserBioText:Landroid/widget/EditText;

.field public mUserEmail:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mUserEmailText:Landroid/widget/EditText;

.field public mUserFullName:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mUserFullNameText:Landroid/widget/EditText;

.field public mUserIconUrl:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mUserName:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mUserNameText:Landroid/widget/EditText;

.field private mUserPasswordText:Landroid/widget/EditText;

.field private mUserPic:Landroid/widget/ImageView;

.field private mUserUpdateReceiver:Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;

.field private mViewProfile:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ProfileEditor;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/inaturalist/android/ProfileEditor;->takePhoto()V

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ProfileEditor;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/inaturalist/android/ProfileEditor;->choosePhoto()V

    return-void
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ProfileEditor;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/inaturalist/android/ProfileEditor;->refreshUserDetails()V

    return-void
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ProfileEditor;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProfileEditor;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ProfileEditor;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProfileEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method private choosePhoto()V
    .locals 2

    .line 380
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isExternalStoragePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 383
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    .line 384
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ProfileEditor;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v1, Lorg/inaturalist/android/ProfileEditor$7;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ProfileEditor$7;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    invoke-virtual {v0, p0, v1}, Lorg/inaturalist/android/INaturalistApp;->requestExternalStoragePermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void
.end method

.method private isDirty()Z
    .locals 6

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ProfileEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "username"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 190
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserFullNameText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "user_full_name"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 191
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserBioText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "user_bio"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 192
    :cond_2
    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserPasswordText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    .line 193
    :cond_3
    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserEmailText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "user_email"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    :cond_4
    const-string v2, "user_icon_url"

    const/4 v4, 0x0

    .line 194
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 195
    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    :cond_5
    if-nez v0, :cond_6

    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    return v3

    :cond_8
    return v1
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 506
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 507
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshUserDetails()V
    .locals 3

    .line 321
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserNameText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserFullNameText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserFullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserBioText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserBio:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserEmailText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mUserEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 329
    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserPic:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserPic:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?edit=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/inaturalist/android/ProfileEditor$5;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProfileEditor$5;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    invoke-static {v1, v0, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserPic:Landroid/widget/ImageView;

    const v1, 0x7f080234

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3

    .line 495
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    invoke-virtual {v0}, Lorg/inaturalist/android/ActivityHelper;->stopLoading()V

    if-nez p1, :cond_0

    const p1, 0x7f100370

    .line 498
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f100371

    .line 500
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 502
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void
.end method

.method private takePhoto()V
    .locals 4

    .line 353
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isCameraPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v1, Lorg/inaturalist/android/ProfileEditor$6;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ProfileEditor$6;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    invoke-virtual {v0, p0, v1}, Lorg/inaturalist/android/INaturalistApp;->requestCameraPermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void

    .line 369
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mFileUri:Landroid/net/Uri;

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "output"

    .line 374
    iget-object v2, p0, Lorg/inaturalist/android/ProfileEditor;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    .line 375
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ProfileEditor;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 403
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_8

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_2

    .line 409
    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "android.media.action.IMAGE_CAPTURE"

    .line 416
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 422
    iget-object p2, p0, Lorg/inaturalist/android/ProfileEditor;->mFileUri:Landroid/net/Uri;

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    .line 424
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 427
    :goto_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    const-string p3, "ProfileEditor"

    const-string v0, "%s: %s"

    const/4 v3, 0x2

    .line 429
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-direct {p0}, Lorg/inaturalist/android/ProfileEditor;->refreshUserDetails()V

    goto :goto_4

    :cond_5
    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    const v0, 0x7f100339

    .line 437
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/inaturalist/android/ProfileEditor;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "ProfileEditor"

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera bailed, requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_7

    const-string p1, "null"

    goto :goto_3

    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 169
    invoke-direct {p0}, Lorg/inaturalist/android/ProfileEditor;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v0, 0x7f100149

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f100134

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/inaturalist/android/ProfileEditor$1;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ProfileEditor$1;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    new-instance v5, Lorg/inaturalist/android/ProfileEditor$2;

    invoke-direct {v5, p0}, Lorg/inaturalist/android/ProfileEditor$2;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    const v6, 0x7f1003b1

    const v7, 0x7f100260

    invoke-virtual/range {v1 .. v7}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 213
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 216
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 217
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 219
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 221
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->getIntent()Landroid/content/Intent;

    const v0, 0x7f0d0056

    .line 222
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->setContentView(I)V

    .line 225
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f100149

    .line 227
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->setTitle(I)V

    const v0, 0x7f0a03d1

    .line 229
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserNameText:Landroid/widget/EditText;

    const v0, 0x7f0a0143

    .line 230
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserFullNameText:Landroid/widget/EditText;

    const v0, 0x7f0a0118

    .line 231
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserEmailText:Landroid/widget/EditText;

    const v0, 0x7f0a006e

    .line 232
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserBioText:Landroid/widget/EditText;

    const v0, 0x7f0a028d

    .line 233
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserPasswordText:Landroid/widget/EditText;

    const v0, 0x7f0a03d2

    .line 234
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserPic:Landroid/widget/ImageView;

    const v0, 0x7f0a03e1

    .line 235
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mViewProfile:Landroid/widget/Button;

    .line 237
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mViewProfile:Landroid/widget/Button;

    new-instance v1, Lorg/inaturalist/android/ProfileEditor$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ProfileEditor$3;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserPic:Landroid/widget/ImageView;

    new-instance v1, Lorg/inaturalist/android/ProfileEditor$4;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ProfileEditor$4;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0, p1, v1}, Lorg/inaturalist/android/ProfileEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "username"

    const-string v2, ""

    .line 279
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserName:Ljava/lang/String;

    const-string v1, "user_full_name"

    const-string v2, ""

    .line 280
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserFullName:Ljava/lang/String;

    const-string v1, "user_bio"

    const-string v2, ""

    .line 281
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserBio:Ljava/lang/String;

    const-string v1, "user_email"

    const-string v2, ""

    .line 282
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserEmail:Ljava/lang/String;

    const-string v1, "user_icon_url"

    .line 283
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    .line 286
    :cond_1
    invoke-direct {p0}, Lorg/inaturalist/android/ProfileEditor;->refreshUserDetails()V

    .line 288
    new-instance p1, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;

    invoke-direct {p1, p0, v0}, Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;-><init>(Lorg/inaturalist/android/ProfileEditor;Lorg/inaturalist/android/ProfileEditor$1;)V

    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserUpdateReceiver:Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;

    .line 289
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_DETAILS_RESULT:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "ProfileEditor"

    const-string v1, "Registering ACTION_UPDATE_USER_DETAILS_RESULT"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserUpdateReceiver:Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;

    invoke-static {v0, p1, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 202
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    .line 204
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    const v1, 0x7f0a02fc

    if-eq v0, v1, :cond_0

    .line 163
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 91
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ProfileEditor;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v0, 0x7f100285

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return v2

    .line 96
    :cond_1
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_DETAILS:Ljava/lang/String;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USERNAME:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_FULL_NAME:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserFullNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_EMAIL:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_BIO:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserBioText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_PASSWORD:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor;->mUserPasswordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ProfileEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_icon_url"

    .line 104
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v4, p0, Lorg/inaturalist/android/ProfileEditor;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "username"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v4, "Profile Username Changed"

    invoke-virtual {v0, v4}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 111
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 113
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_DELETE_PIC:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v4, "Profile Photo Removed"

    invoke-virtual {v0, v4}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 118
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "AlreadyHadPhoto"

    if-eqz v1, :cond_4

    const-string v1, "Yes"

    goto :goto_0

    :cond_4
    const-string v1, "No"

    .line 123
    :goto_0
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v4, "Profile Photo Changed"

    invoke-virtual {v1, v4, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 133
    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 135
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lorg/inaturalist/android/ProfileEditor;->mUserIconUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 136
    invoke-static {v4, v1}, Lorg/apache/sanselan/util/IOUtils;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 137
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 138
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 142
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_PIC:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    invoke-direct {p0, v3}, Lorg/inaturalist/android/ProfileEditor;->showError(Ljava/lang/String;)V

    return v2

    .line 151
    :cond_5
    :goto_2
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 153
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v0, 0x7f100382

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ActivityHelper;->loading(Ljava/lang/String;)V

    return v2

    .line 158
    :cond_6
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->onBackPressed()V

    return v2
.end method

.method protected onPause()V
    .locals 1

    .line 296
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 298
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserUpdateReceiver:Lorg/inaturalist/android/ProfileEditor$UserUpdateReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p1, p2, p3}, Lorg/inaturalist/android/INaturalistApp;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 303
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 304
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserName:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserFullNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserFullName:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserEmailText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserEmail:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserBioText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mUserBio:Ljava/lang/String;

    .line 316
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 317
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 75
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 76
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 84
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public removePhoto()V
    .locals 7

    .line 446
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v1, 0x7f10012c

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100060

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ProfileEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/ProfileEditor$8;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ProfileEditor$8;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    new-instance v4, Lorg/inaturalist/android/ProfileEditor$9;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ProfileEditor$9;-><init>(Lorg/inaturalist/android/ProfileEditor;)V

    const v5, 0x7f1003b1

    const v6, 0x7f100260

    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method
