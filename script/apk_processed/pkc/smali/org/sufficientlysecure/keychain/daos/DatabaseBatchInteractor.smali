.class public Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;
.super Ljava/lang/Object;
.source "DatabaseBatchInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;
    }
.end annotation


# instance fields
.field private final db:Landroid/arch/persistence/db/SupportSQLiteDatabase;

.field private final insertCertificationStatement:Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;

.field private final insertKeyRingPublicStatement:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;

.field private final insertKeySignerStatement:Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;

.field private final insertSubKeyStatement:Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;

.field private final insertUserPacketStatement:Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;


# direct methods
.method constructor <init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->db:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 32
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertKeyRingPublicStatement:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;

    .line 33
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/model/SubKey;->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertSubKeyStatement:Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;

    .line 34
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/model/UserPacket;->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertUserPacketStatement:Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;

    .line 35
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/model/Certification;->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertCertificationStatement:Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;

    .line 36
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/model/KeySignature;->createInsertStatement(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertKeySignerStatement:Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;---><init>(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInsertCertification(Lorg/sufficientlysecure/keychain/model/Certification;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;
    .locals 10

    move-object/16 v7, p0

    .line 79
    new-instance v6, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;-><init>(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;Lorg/sufficientlysecure/keychain/model/SubKey;Lorg/sufficientlysecure/keychain/model/UserPacket;Lorg/sufficientlysecure/keychain/model/Certification;Lorg/sufficientlysecure/keychain/model/KeySignature;)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;--->createInsertCertification(Lorg/sufficientlysecure/keychain/model/Certification;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInsertKeyRingPublic(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;
    .locals 10

    move-object/16 v7, p0

    .line 67
    new-instance v6, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;-><init>(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;Lorg/sufficientlysecure/keychain/model/SubKey;Lorg/sufficientlysecure/keychain/model/UserPacket;Lorg/sufficientlysecure/keychain/model/Certification;Lorg/sufficientlysecure/keychain/model/KeySignature;)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;--->createInsertKeyRingPublic(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createInsertSignerKey(Lorg/sufficientlysecure/keychain/model/KeySignature;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;
    .locals 10

    move-object/16 v7, p0

    .line 83
    new-instance v6, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;-><init>(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;Lorg/sufficientlysecure/keychain/model/SubKey;Lorg/sufficientlysecure/keychain/model/UserPacket;Lorg/sufficientlysecure/keychain/model/Certification;Lorg/sufficientlysecure/keychain/model/KeySignature;)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;--->createInsertSignerKey(Lorg/sufficientlysecure/keychain/model/KeySignature;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createInsertSubKey(Lorg/sufficientlysecure/keychain/model/SubKey;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;
    .locals 10

    move-object/16 v7, p0

    .line 71
    new-instance v6, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;-><init>(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;Lorg/sufficientlysecure/keychain/model/SubKey;Lorg/sufficientlysecure/keychain/model/UserPacket;Lorg/sufficientlysecure/keychain/model/Certification;Lorg/sufficientlysecure/keychain/model/KeySignature;)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;--->createInsertSubKey(Lorg/sufficientlysecure/keychain/model/SubKey;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInsertUserPacket(Lorg/sufficientlysecure/keychain/model/UserPacket;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;
    .locals 10

    move-object/16 v7, p0

    .line 75
    new-instance v6, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;-><init>(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;Lorg/sufficientlysecure/keychain/model/SubKey;Lorg/sufficientlysecure/keychain/model/UserPacket;Lorg/sufficientlysecure/keychain/model/Certification;Lorg/sufficientlysecure/keychain/model/KeySignature;)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;--->createInsertUserPacket(Lorg/sufficientlysecure/keychain/model/UserPacket;)Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public applyBatch(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 44
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;

    .line 45
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->keyRingPublic:Lorg/sufficientlysecure/keychain/model/KeyRingPublic;

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->keyRingPublic:Lorg/sufficientlysecure/keychain/model/KeyRingPublic;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertKeyRingPublicStatement:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic;->bindTo(Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;)V

    .line 47
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertKeyRingPublicStatement:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$InsertKeyRingPublic;->executeInsert()J

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    if-eqz v1, :cond_1

    .line 49
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertSubKeyStatement:Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/model/SubKey;->bindTo(Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;)V

    .line 50
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertSubKeyStatement:Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeysModel$InsertKey;->executeInsert()J

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->userPacket:Lorg/sufficientlysecure/keychain/model/UserPacket;

    if-eqz v1, :cond_2

    .line 52
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->userPacket:Lorg/sufficientlysecure/keychain/model/UserPacket;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertUserPacketStatement:Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/model/UserPacket;->bindTo(Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;)V

    .line 53
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertUserPacketStatement:Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/UserPacketsModel$InsertUserPacket;->executeInsert()J

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->certification:Lorg/sufficientlysecure/keychain/model/Certification;

    if-eqz v1, :cond_3

    .line 55
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->certification:Lorg/sufficientlysecure/keychain/model/Certification;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertCertificationStatement:Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/model/Certification;->bindTo(Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;)V

    .line 56
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertCertificationStatement:Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/CertsModel$InsertCert;->executeInsert()J

    goto :goto_0

    .line 57
    :cond_3
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->keySignature:Lorg/sufficientlysecure/keychain/model/KeySignature;

    if-eqz v1, :cond_4

    .line 58
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->keySignature:Lorg/sufficientlysecure/keychain/model/KeySignature;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertKeySignerStatement:Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/model/KeySignature;->bindTo(Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;)V

    .line 59
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->insertKeySignerStatement:Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeySignaturesModel$InsertKeySignature;->executeInsert()J

    goto :goto_0

    .line 61
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_5
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;--->applyBatch(Ljava/util/List;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 4

    move-object/16 v1, p0

    .line 40
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;->db:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;--->getDb()Landroid/arch/persistence/db/SupportSQLiteDatabase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
