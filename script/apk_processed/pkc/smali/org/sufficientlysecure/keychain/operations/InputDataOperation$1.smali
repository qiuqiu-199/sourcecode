.class Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;
.super Lorg/apache/james/mime4j/parser/AbstractContentHandler;
.source "InputDataOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->execute(Lorg/sufficientlysecure/keychain/service/InputDataParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFilename:Ljava/lang/String;

.field private mFoundContentTypeHeader:Z

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

.field private uncheckedSignedDataUri:Landroid/net/Uri;

.field final synthetic val$cryptoInput:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

.field final synthetic val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

.field final synthetic val$metadatas:Ljava/util/ArrayList;

.field final synthetic val$outputUris:Ljava/util/ArrayList;

.field final synthetic val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/apache/james/mime4j/parser/MimeStreamParser;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 171
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$outputUris:Ljava/util/ArrayList;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$metadatas:Ljava/util/ArrayList;

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    iput-object p3, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$cryptoInput:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/AbstractContentHandler;-><init>()V

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFoundContentTypeHeader:Z

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;---><init>(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/apache/james/mime4j/parser/MimeStreamParser;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private bodySignature(Lorg/apache/james/mime4j/stream/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    const-string v0, "application/pgp-signature"

    .line 248
    invoke-interface {v6}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez v6, :cond_0

    .line 249
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_DETACHED_UNSUPPORTED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v7, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 250
    iput-object v0, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->uncheckedSignedDataUri:Landroid/net/Uri;

    .line 251
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setRecurse()V

    return-void

    .line 255
    :cond_0
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_DETACHED_SIG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 257
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 260
    :cond_1
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    .line 262
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B

    move-result-object v4

    invoke-virtual {v6, v4, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v3, 0x1000

    if-le v2, v3, :cond_1

    .line 264
    new-instance v6, Ljava/io/IOException;

    const-string v7, "detached signature is unreasonably large!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 267
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 269
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v7

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->uncheckedSignedDataUri:Landroid/net/Uri;

    .line 270
    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setInputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v7

    .line 271
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setDetachedSignature([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v6

    .line 272
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v6

    .line 274
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v7, v1, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 276
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$cryptoInput:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v7, v6, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v6

    .line 278
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    const/4 v1, 0x4

    invoke-virtual {v7, v6, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->addByMerge(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 280
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->uncheckedSignedDataUri:Landroid/net/Uri;

    iput-object v1, v7, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataUri:Landroid/net/Uri;

    .line 281
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iput-object v6, v7, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 284
    iput-object v0, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->uncheckedSignedDataUri:Landroid/net/Uri;

    .line 285
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setRecurse()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;--->bodySignature(Lorg/apache/james/mime4j/stream/BodyDescriptor;Ljava/io/InputStream;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/stream/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v20, p0

    move-object/16 v21, p1

    move-object/16 v22, p2

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    .line 293
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->uncheckedSignedDataUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 294
    invoke-direct/range {v20 .. v22}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->bodySignature(Lorg/apache/james/mime4j/stream/BodyDescriptor;Ljava/io/InputStream;)V

    return-void

    .line 299
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_1

    return-void

    .line 306
    :cond_1
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataUri:Landroid/net/Uri;

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    if-eqz v3, :cond_2

    .line 307
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_DETACHED_TRAILING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-void

    .line 311
    :cond_2
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_PART:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v5, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 313
    invoke-interface/range {v21 .. v21}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 315
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 316
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_FILENAME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v4, v8, v6, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const-string v4, "application/octet-stream"

    .line 317
    invoke-static {v3, v4}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/x-download"

    .line 318
    invoke-static {v3, v4}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_5

    .line 320
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 324
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_FROM_EXTENSION:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v8, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    move-object v11, v4

    goto :goto_2

    :cond_5
    move-object v11, v3

    .line 328
    :goto_2
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_TYPE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v11, v8, v7

    invoke-virtual {v3, v4, v6, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 330
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    invoke-static {v3, v4, v11}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 331
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "w"

    invoke-virtual {v4, v3, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    if-nez v4, :cond_6

    .line 334
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error getting file for writing!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_6
    invoke-interface/range {v21 .. v21}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v8

    .line 340
    new-instance v9, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    invoke-static {v10}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B

    move-result-object v10

    invoke-direct {v9, v10, v11, v8}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    move v8, v2

    const/4 v2, 0x0

    :cond_7
    add-int/2addr v2, v8

    .line 345
    iget-object v10, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    invoke-static {v10}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B

    move-result-object v10

    invoke-virtual {v4, v10, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 346
    invoke-virtual {v9, v7, v8}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->readBytesFromBuffer(II)V

    .line 347
    iget-object v8, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    invoke-static {v8}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_7

    .line 349
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_LENGTH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v10, v5, [Ljava/lang/Object;

    int-to-long v14, v2

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v7

    invoke-virtual {v1, v8, v6, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 352
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isDefinitelyBinary()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 353
    new-instance v1, Lorg/openintents/openpgp/OpenPgpMetadata;

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    const-wide/16 v12, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lorg/openintents/openpgp/OpenPgpMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_4

    .line 355
    :cond_8
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isCharsetFaulty()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isCharsetGuessed()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 356
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_CHARSET_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->getMaybeFaultyCharset()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v1, v2, v6, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_3

    .line 357
    :cond_9
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isCharsetFaulty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 358
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_CHARSET_FAULTY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->getCharset()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v1, v2, v6, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_3

    .line 359
    :cond_a
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->isCharsetGuessed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 360
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_CHARSET_GUESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->getCharset()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v1, v2, v6, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_3

    .line 362
    :cond_b
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_CHARSET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->getCharset()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v1, v2, v6, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 365
    :goto_3
    new-instance v1, Lorg/openintents/openpgp/OpenPgpMetadata;

    iget-object v13, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->getGuessedMimeType()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    .line 366
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->getCharset()Ljava/lang/String;

    move-result-object v19

    move-object v12, v1

    move-wide v7, v14

    move-object v14, v2

    move-wide v15, v5

    move-wide/from16 v17, v7

    invoke-direct/range {v12 .. v19}, Lorg/openintents/openpgp/OpenPgpMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 369
    :goto_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 370
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$outputUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$metadatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;--->body(Lorg/apache/james/mime4j/stream/BodyDescriptor;Ljava/io/InputStream;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public endHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 230
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFoundContentTypeHeader:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->stop()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;--->endHeader()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 237
    invoke-static {}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-interface {v0, v3, v1}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v3

    .line 238
    instance-of v0, v3, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-eqz v0, :cond_0

    .line 239
    move-object v0, v3

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    .line 241
    :cond_0
    instance-of v3, v3, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 242
    iput-boolean v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFoundContentTypeHeader:Z

    :cond_1
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;--->field(Lorg/apache/james/mime4j/stream/Field;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 199
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->uncheckedSignedDataUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 200
    new-instance v5, Ljava/lang/AssertionError;

    const-string v0, "raw parts must only be received as first part of multipart/signed!"

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 203
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_DETACHED_RAW:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 205
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    const-string v2, "text/plain"

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->uncheckedSignedDataUri:Landroid/net/Uri;

    .line 206
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->uncheckedSignedDataUri:Landroid/net/Uri;

    const-string v2, "w"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 209
    new-instance v5, Ljava/io/IOException;

    const-string v0, "Error getting file for writing!"

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 213
    :cond_1
    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    .line 214
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 219
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setFlat()V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;--->raw(Ljava/io/InputStream;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public startHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 225
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->mFilename:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;--->startHeader()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public startMultipart(Lorg/apache/james/mime4j/stream/BodyDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "signed"

    .line 178
    invoke-interface {v3}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataUri:Landroid/net/Uri;

    const/4 v0, 0x2

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_DETACHED_NESTED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-void

    .line 184
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_DETACHED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 185
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$outputUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_DETACHED_CLEAR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v1, 0x3

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 188
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$outputUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$metadatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 192
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setRaw()V

    :cond_2
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;--->startMultipart(Lorg/apache/james/mime4j/stream/BodyDescriptor;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
