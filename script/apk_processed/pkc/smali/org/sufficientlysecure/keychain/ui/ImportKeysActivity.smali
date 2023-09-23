.class public Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "ImportKeysActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;


# static fields
.field public static final ACTION_IMPORT_KEY:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY"

.field public static final ACTION_IMPORT_KEY_FROM_CLIPBOARD:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_CLIPBOARD"

.field public static final ACTION_IMPORT_KEY_FROM_FACEBOOK:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FACEBOOK"

.field public static final ACTION_IMPORT_KEY_FROM_FILE:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FILE"

.field public static final ACTION_IMPORT_KEY_FROM_FILE_AND_RETURN:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FILE_AND_RETURN"

.field public static final ACTION_IMPORT_KEY_FROM_KEYSERVER:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEYSERVER"

.field public static final ACTION_IMPORT_KEY_FROM_KEYSERVER_AND_RETURN_RESULT:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEY_SERVER_AND_RETURN_RESULT"

.field public static final ACTION_IMPORT_KEY_FROM_WEB_KEY_DIRECTORY:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.ACTION_IMPORT_KEY_FROM_WEB_KEY_DIRECTORY"

.field public static final ACTION_SEARCH_KEYSERVER_FROM_URL:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.SEARCH_KEYSERVER_FROM_URL"

.field public static final EXTRA_FINGERPRINT:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_FINGERPRINT"

.field public static final EXTRA_KEY_BYTES:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_KEY_BYTES"

.field public static final EXTRA_KEY_ID:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_KEY_ID"

.field public static final EXTRA_QUERY:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_QUERY"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final TAG_FRAG_LIST:Ljava/lang/String; = "frag_list"

.field public static final TAG_FRAG_TOP:Ljava/lang/String; = "frag_top"


# instance fields
.field private mFreshIntent:Z

.field private mOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isFingerprintValid(Ljava/lang/String;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x28

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    :goto_0
    const v2, 0x7f1107e2

    .line 348
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    const v0, 0x7f090197

    .line 349
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-interface {v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/view/ViewGroup;)V

    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->isFingerprintValid(Ljava/lang/String;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    const/4 v0, 0x0

    .line 313
    invoke-static {v2, v3, p0, v0, p1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->newInstance([BLandroid/net/Uri;Ljava/lang/String;ZLorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    move-result-object v2

    .line 315
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const-string p0, "frag_list"

    const p1, 0x7f090194

    .line 316
    invoke-virtual {v3, p1, v2, p0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startListFragmentFromClipboard()V
    .locals 5

    move-object/16 v2, p0

    .line 283
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;->getClipboardText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f11016d

    .line 285
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 289
    :cond_0
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->getPgpPublicKeyContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f11016b

    .line 291
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 295
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v1, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->startListFragmentFromClipboard()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startTopCloudFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 338
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "frag_top"

    .line 339
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 340
    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->newInstance(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    move-result-object v3

    .line 342
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const-string v0, "frag_top"

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->startTopCloudFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startTopFileFragment()V
    .locals 6

    move-object/16 v3, p0

    .line 321
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "frag_top"

    .line 322
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 323
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;

    move-result-object v1

    .line 324
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "frag_top"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->startTopFileFragment()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected handleActions(Landroid/content/Intent;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 121
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 123
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 124
    invoke-virtual {v8}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v3, "android.intent.action.VIEW"

    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 131
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;->isFacebookHost(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FACEBOOK"

    goto :goto_1

    :cond_1
    const-string v0, "https"

    .line 133
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/.well-known/openpgpkey/hu/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "org.sufficientlysecure.keychain.action.ACTION_IMPORT_KEY_FROM_WEB_KEY_DIRECTORY"

    goto :goto_1

    :cond_2
    const-string v0, "http"

    .line 135
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "openpgp4fpr"

    .line 137
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEYSERVER"

    const-string v8, "org.sufficientlysecure.keychain.EXTRA_FINGERPRINT"

    .line 139
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY"

    goto :goto_1

    :cond_5
    :goto_0
    const-string v0, "org.sufficientlysecure.keychain.action.SEARCH_KEYSERVER_FROM_URL"

    goto :goto_1

    :cond_6
    const-string v3, "android.intent.action.SEND"

    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY"

    goto :goto_1

    :cond_7
    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "openpgp4fpr"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEYSERVER"

    const-string v8, "org.sufficientlysecure.keychain.EXTRA_FINGERPRINT"

    .line 149
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    if-nez v0, :cond_9

    const-string v0, ""

    :cond_9
    const/4 v8, -0x1

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v3, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEYSERVER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_1
    const-string v3, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_CLIPBOARD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v8, 0x8

    goto :goto_2

    :sswitch_2
    const-string v3, "org.sufficientlysecure.keychain.action.IMPORT_KEY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_3
    const-string v3, "org.sufficientlysecure.keychain.action.SEARCH_KEYSERVER_FROM_URL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_4
    const-string v3, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEY_SERVER_AND_RETURN_RESULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_5
    const-string v3, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FACEBOOK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_6
    const-string v3, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_7
    const-string v3, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FILE_AND_RETURN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v8, 0x7

    goto :goto_2

    :sswitch_8
    const-string v3, "org.sufficientlysecure.keychain.action.ACTION_IMPORT_KEY_FROM_WEB_KEY_DIRECTORY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v8, 0x4

    :cond_a
    :goto_2
    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    .line 275
    invoke-direct {v7, v0, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startTopCloudFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    .line 276
    invoke-direct {v7, v0, v0, v0, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto/16 :goto_6

    .line 271
    :pswitch_0
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragmentFromClipboard()V

    goto/16 :goto_6

    .line 266
    :pswitch_1
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startTopFileFragment()V

    .line 267
    invoke-direct {v7, v0, v0, v0, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto/16 :goto_6

    .line 239
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createFromUri(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v8

    .line 241
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->createKeyserverOnly(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v1

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using keyserver: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v8, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "op"

    .line 245
    invoke-virtual {v2, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "search"

    .line 246
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    const-string v3, "get"

    .line 253
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 255
    invoke-direct {v7, v0, v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto/16 :goto_6

    .line 257
    :cond_c
    invoke-direct {v7, v2, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startTopCloudFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    .line 258
    invoke-direct {v7, v0, v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto/16 :goto_6

    .line 250
    :cond_d
    :goto_3
    invoke-direct {v7, v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startTopCloudFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    .line 251
    invoke-direct {v7, v0, v0, v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto/16 :goto_6

    .line 232
    :pswitch_3
    invoke-static {}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->createWebKeyDirectoryOnly()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v8

    .line 234
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v0, v1, v8}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto/16 :goto_6

    .line 222
    :pswitch_4
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/keyimport/FacebookKeyserverClient;->getUsernameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 225
    invoke-static {}, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;->createSocialOnly()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v1

    .line 227
    invoke-direct {v7, v0, v0, v8, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto/16 :goto_6

    :pswitch_5
    const-string v8, "org.sufficientlysecure.keychain.EXTRA_QUERY"

    .line 178
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "org.sufficientlysecure.keychain.EXTRA_KEY_ID"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_4

    :cond_e
    const-string v8, "org.sufficientlysecure.keychain.EXTRA_FINGERPRINT"

    .line 201
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "org.sufficientlysecure.keychain.EXTRA_FINGERPRINT"

    .line 207
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-direct {v7, v8}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->isFingerprintValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 212
    invoke-direct {v7, v0, v0, v8, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto/16 :goto_6

    :cond_f
    const-string v8, "IMPORT_KEY_FROM_KEYSERVER action needs to contain the \'query\', \'key_id\', or \'fingerprint\' extra!"

    .line 215
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v8, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_10
    :goto_4
    const-string v8, "org.sufficientlysecure.keychain.EXTRA_QUERY"

    .line 182
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "org.sufficientlysecure.keychain.EXTRA_QUERY"

    .line 183
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_11
    const-string v8, "org.sufficientlysecure.keychain.EXTRA_KEY_ID"

    .line 184
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "org.sufficientlysecure.keychain.EXTRA_KEY_ID"

    const-wide/16 v2, 0x0

    .line 185
    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v8, v5, v2

    if-eqz v8, :cond_12

    .line 187
    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_12
    move-object v8, v0

    :goto_5
    if-eqz v8, :cond_13

    .line 191
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 193
    invoke-direct {v7, v8, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startTopCloudFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    .line 196
    invoke-direct {v7, v0, v0, v8, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto :goto_6

    :cond_13
    const-string v8, "Query is empty!"

    .line 198
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v8, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_6
    if-eqz v2, :cond_14

    .line 161
    invoke-direct {v7, v0, v2, v0, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto :goto_6

    :cond_14
    const-string v8, "org.sufficientlysecure.keychain.EXTRA_KEY_BYTES"

    .line 162
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "org.sufficientlysecure.keychain.EXTRA_KEY_BYTES"

    .line 163
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 166
    invoke-direct {v7, v8, v0, v0, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto :goto_6

    :cond_15
    const-string v8, "android.intent.extra.STREAM"

    .line 167
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string v8, "android.intent.extra.STREAM"

    .line 168
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-direct {v7, v0, v8, v0, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    goto :goto_6

    .line 170
    :cond_16
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startTopFileFragment()V

    .line 171
    invoke-direct {v7, v0, v0, v0, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startListFragment([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    :cond_17
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ba99734 -> :sswitch_8
        -0x71a15e2e -> :sswitch_7
        -0x6801c89b -> :sswitch_6
        -0x40d447d1 -> :sswitch_5
        -0x33f1c38f -> :sswitch_4
        -0x31a7ee40 -> :sswitch_3
        0x61f2fb3 -> :sswitch_2
        0x30556d2d -> :sswitch_1
        0x4efed9f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->handleActions(Landroid/content/Intent;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public handleResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Ljava/lang/Integer;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 411
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEY_SERVER_AND_RETURN_RESULT"

    .line 413
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FILE_AND_RETURN"

    .line 414
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isOkNew()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isOkUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_2

    :cond_2
    :goto_0
    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_CLIPBOARD"

    .line 420
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 421
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;->clearClipboard(Landroid/content/Context;)V

    .line 425
    :cond_3
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setFirstTime(Z)V

    .line 428
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-direct {v3, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "operation_result"

    .line 429
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 430
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 431
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 415
    :cond_4
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "operation_result"

    .line 416
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, -0x1

    .line 417
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->setResult(ILandroid/content/Intent;)V

    .line 418
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->finish()V

    :goto_2
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->handleResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Ljava/lang/Integer;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public importKeys(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 386
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getParcelableKeyRing()Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    :cond_0
    :try_start_0
    new-instance v1, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;

    const-string v2, "key_import.pcl"

    invoke-direct {v1, v3, v2}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->writeCache(ILjava/util/Iterator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .line 403
    invoke-static {v4, v4}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    .line 404
    new-instance v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;

    invoke-direct {v1, v3, v0, v4}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;-><init>(Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Ljava/lang/Integer;)V

    .line 405
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v0, 0x1

    const v2, 0x7f110c10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v0, v3, v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->mOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 406
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->mOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    :catch_0
    move-exception v4

    const-string v0, "Problem writing cache file"

    const/4 v1, 0x0

    .line 398
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "Problem writing cache file!"

    .line 399
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->importKeys(Ljava/util/List;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0083

    .line 106
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public loadKeys(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 378
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "frag_list"

    .line 379
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->loadState(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->loadKeys(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 358
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->mOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->mOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 359
    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onBackPressed()V
    .locals 5

    move-object/16 v2, p0

    .line 367
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "frag_list"

    .line 369
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onBackPressed()V

    :cond_1
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->onBackPressed()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 96
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 99
    iput-boolean v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->mFreshIntent:Z

    const/4 v0, 0x0

    .line 101
    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->setFullScreenDialogClose(IZ)V

    return-void
.end method

.method protected onResumeFragments()V
    .locals 4

    move-object/16 v1, p0

    .line 111
    invoke-super {v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onResumeFragments()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;--->onResumeFragments()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->mFreshIntent:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->handleActions(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->mFreshIntent:Z

    :cond_0
    return-void
.end method
