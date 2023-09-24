.class Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;
.super Ljava/lang/Object;
.source "DatabaseBatchInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatchOp"
.end annotation


# instance fields
.field final certification:Lorg/sufficientlysecure/keychain/model/Certification;

.field final keyRingPublic:Lorg/sufficientlysecure/keychain/model/KeyRingPublic;

.field final keySignature:Lorg/sufficientlysecure/keychain/model/KeySignature;

.field final subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

.field final userPacket:Lorg/sufficientlysecure/keychain/model/UserPacket;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;Lorg/sufficientlysecure/keychain/model/SubKey;Lorg/sufficientlysecure/keychain/model/UserPacket;Lorg/sufficientlysecure/keychain/model/Certification;Lorg/sufficientlysecure/keychain/model/KeySignature;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 94
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    .line 96
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->keyRingPublic:Lorg/sufficientlysecure/keychain/model/KeyRingPublic;

    .line 97
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->userPacket:Lorg/sufficientlysecure/keychain/model/UserPacket;

    .line 98
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->certification:Lorg/sufficientlysecure/keychain/model/Certification;

    .line 99
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;->keySignature:Lorg/sufficientlysecure/keychain/model/KeySignature;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/daos/DatabaseBatchInteractor$BatchOp;---><init>(Lorg/sufficientlysecure/keychain/model/KeyRingPublic;Lorg/sufficientlysecure/keychain/model/SubKey;Lorg/sufficientlysecure/keychain/model/UserPacket;Lorg/sufficientlysecure/keychain/model/Certification;Lorg/sufficientlysecure/keychain/model/KeySignature;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
