.class public Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewKeyAdvShareFragment.java"


# instance fields
.field private mFingerprintView:Landroid/widget/TextView;

.field private mQrCode:Landroid/widget/ImageView;

.field private mQrCodeBitmapCache:Landroid/graphics/Bitmap;

.field private mQrCodeLayout:Landroid/support/v7/widget/CardView;

.field private unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 71
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getShareKeyContent(Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;,
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/16 v5, p0

    move/16 v6, p1

    .line 144
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    if-eqz v6, :cond_0

    .line 148
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_auth_key_int()J

    move-result-wide v1

    .line 149
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v6

    .line 150
    invoke-virtual {v6, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v6

    .line 151
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;

    invoke-direct {v0, v6}, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V

    .line 152
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->getEncodedKey()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 154
    :cond_0
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getPublicKeyRingAsArmoredString(J)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->getShareKeyContent(Z)Ljava/lang/String;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$null$10$ViewKeyAdvShareFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/graphics/Bitmap;
    .locals 2

    .line 297
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object p0

    invoke-static {p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object p0

    .line 298
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "openpgp4fpr"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    .line 300
    invoke-static {p0, v0}, Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;->getQRCodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private onLoadQrCode(Landroid/graphics/Bitmap;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 318
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCodeBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-void

    .line 322
    :cond_0
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCodeBitmapCache:Landroid/graphics/Bitmap;

    .line 323
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    .line 327
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xc8

    .line 328
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 329
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->onLoadQrCode(Landroid/graphics/Bitmap;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private shareFingerprint(Z)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    .line 232
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v1

    if-nez v5, :cond_1

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openpgp4fpr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v5, :cond_3

    const-string v5, "clipboard"

    .line 246
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    if-nez v5, :cond_2

    const v5, 0x7f11016c

    .line 248
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    :cond_2
    const-string v2, "Keychain"

    .line 252
    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 253
    invoke-virtual {v5, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v5, 0x7f11041e

    .line 255
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 260
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.TEXT"

    .line 261
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 262
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f110cf8

    .line 264
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v5, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 267
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_4
    :goto_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->shareFingerprint(Z)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private shareKey(ZZ)V
    .locals 11

    move-object/16 v8, p0

    move/16 v9, p1

    move/16 v10, p2

    .line 161
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 162
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v10, :cond_1

    .line 165
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_auth_key()Z

    move-result v1

    if-nez v1, :cond_1

    const v9, 0x7f110048

    .line 166
    sget-object v10, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v9, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 171
    :try_start_0
    invoke-direct {v8, v10}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getShareKeyContent(Z)Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_3

    const-string v9, "clipboard"

    .line 174
    invoke-virtual {v0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    if-nez v9, :cond_2

    const v9, 0x7f11016c

    .line 176
    sget-object v10, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v9, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    :cond_2
    const-string v2, "Keychain"

    .line 180
    invoke-static {v2, v10}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v10

    .line 181
    invoke-virtual {v9, v10}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v9, 0x7f1107ff

    .line 183
    sget-object v10, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v9, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 188
    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/pgp-keys"

    .line 189
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :try_start_1
    new-instance v2, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;-><init>()V

    .line 198
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 199
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 201
    :cond_4
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v3

    .line 203
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".asc"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 205
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const-string v7, "w"

    .line 207
    invoke-virtual {v2, v3, v7}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 208
    invoke-virtual {v4, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    const-string v10, "android.intent.extra.STREAM"

    .line 211
    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    const-string v2, "Error creating temporary key share file!"

    .line 213
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v10, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const v10, 0x7f110cf9

    .line 218
    invoke-virtual {v8, v10}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 219
    invoke-static {v9, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    .line 221
    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    const-string v10, "key not found!"

    .line 226
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v10, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v9, 0x7f11017e

    .line 227
    sget-object v10, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v9, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_2

    :catch_2
    move-exception v9

    const-string v10, "error processing key!"

    .line 223
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v10, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v9, 0x7f11017f

    .line 224
    sget-object v10, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v9, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->shareKey(ZZ)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showQrCodeDialog()V
    .locals 8

    move-object/16 v5, p0

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 278
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCodeLayout:Landroid/support/v7/widget/CardView;

    const-string v3, "qr_code"

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "master_key_id"

    .line 282
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 283
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->showQrCodeDialog()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startSafeSlinger()V
    .locals 7

    move-object/16 v4, p0

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_id"

    .line 137
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->startSafeSlinger()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private uploadToKeyserver()V
    .locals 9

    move-object/16 v6, p0

    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_key_ids"

    const/4 v2, 0x1

    .line 335
    new-array v2, v2, [J

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 336
    invoke-virtual {v6, v0, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->uploadToKeyserver()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$ViewKeyAdvShareFragment(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->onLoadQrCode(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$0$ViewKeyAdvShareFragment(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 95
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCodeBitmapCache:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    .line 100
    iget-object p2, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    .line 103
    iget-object p3, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCodeBitmapCache:Landroid/graphics/Bitmap;

    const/4 p4, 0x0

    invoke-static {p3, p1, p2, p4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method final synthetic lambda$onCreateView$1$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->showQrCodeDialog()V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 122
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->shareFingerprint(Z)V

    return-void
.end method

.method final synthetic lambda$onCreateView$3$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 123
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->shareFingerprint(Z)V

    return-void
.end method

.method final synthetic lambda$onCreateView$4$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 124
    invoke-direct {p0, p1, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->shareKey(ZZ)V

    return-void
.end method

.method final synthetic lambda$onCreateView$5$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->shareKey(ZZ)V

    return-void
.end method

.method final synthetic lambda$onCreateView$6$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->startSafeSlinger()V

    return-void
.end method

.method final synthetic lambda$onCreateView$7$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, p1, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->shareKey(ZZ)V

    return-void
.end method

.method final synthetic lambda$onCreateView$8$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 129
    invoke-direct {p0, p1, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->shareKey(ZZ)V

    return-void
.end method

.method final synthetic lambda$onCreateView$9$ViewKeyAdvShareFragment(Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->uploadToKeyserver()V

    return-void
.end method

.method final synthetic lambda$onViewCreated$11$ViewKeyAdvShareFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$13;

    invoke-direct {v2, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$13;-><init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    const p0, 0x7f0c010b

    const/4 v0, 0x0

    .line 81
    invoke-virtual {v9, p0, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f090374

    .line 83
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mFingerprintView:Landroid/widget/TextView;

    const v10, 0x7f09037c

    .line 84
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    .line 92
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCode:Landroid/widget/ImageView;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$0;

    invoke-direct {p0, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v10, 0x7f09037d

    .line 108
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/CardView;

    iput-object v10, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCodeLayout:Landroid/support/v7/widget/CardView;

    .line 109
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mQrCodeLayout:Landroid/support/v7/widget/CardView;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$1;

    invoke-direct {p0, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v10, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f090369

    .line 111
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const p0, 0x7f090368

    .line 112
    invoke-virtual {v9, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f09036c

    .line 113
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09036a

    .line 114
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09036b

    .line 115
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f09036e

    .line 116
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09036d

    .line 117
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f09036f

    .line 118
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 119
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f040088

    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v7}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 122
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$2;

    invoke-direct {v6, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$3;

    invoke-direct {v10, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {p0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$4;

    invoke-direct {v10, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$5;

    invoke-direct {v10, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$6;

    invoke-direct {v10, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$7;

    invoke-direct {v10, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$8;

    invoke-direct {v10, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$8;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v10, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$9;

    invoke-direct {v10, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$9;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v9

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    return-void

    .line 311
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 313
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 314
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->mFingerprintView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->formatFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 288
    invoke-super {v0, v1, v2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;--->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;

    .line 291
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 292
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$10;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$10;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 294
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$11;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$11;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-static {v1, v2}, Landroid/arch/lifecycle/Transformations;->switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 303
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$12;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$12;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method
