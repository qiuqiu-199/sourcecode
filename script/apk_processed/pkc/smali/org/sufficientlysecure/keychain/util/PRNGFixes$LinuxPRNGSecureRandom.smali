.class public Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;
.super Ljava/security/SecureRandomSpi;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/util/PRNGFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinuxPRNGSecureRandom"
.end annotation


# static fields
.field private static final URANDOM_FILE:Ljava/io/File;

.field private static final sLock:Ljava/lang/Object;

.field private static sUrandomIn:Ljava/io/DataInputStream;

.field private static sUrandomOut:Ljava/io/OutputStream;


# instance fields
.field private mSeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 212
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    .line 214
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 198
    invoke-direct {v0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getUrandomInputStream()Ljava/io/DataInputStream;
    .locals 8

    move-object/16 v5, p0

    .line 286
    sget-object v0, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 293
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 296
    :try_start_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 300
    :cond_0
    :goto_0
    sget-object v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 301
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;--->getUrandomInputStream()Ljava/io/DataInputStream;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getUrandomOutputStream()Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 305
    sget-object v0, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    .line 309
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;--->getUrandomOutputStream()Ljava/io/OutputStream;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 280
    new-array v1, v1, [B

    .line 281
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->engineNextBytes([B)V

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;--->engineGenerateSeed(I)[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected engineNextBytes([B)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 259
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Lorg/sufficientlysecure/keychain/util/PRNGFixes;->access$000()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->engineSetSeed([B)V

    .line 266
    :cond_0
    :try_start_0
    sget-object v0, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :try_start_1
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->getUrandomInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    .line 268
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    :try_start_2
    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 271
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v4

    .line 268
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v4

    .line 273
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;--->engineNextBytes([B)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected engineSetSeed([B)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x1

    .line 243
    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->getUrandomOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 245
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 247
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    :goto_0
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 245
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    goto :goto_2

    .line 251
    :catch_0
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to mix seed into "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    .line 253
    :goto_2
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    .line 254
    throw v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;--->engineSetSeed([B)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
