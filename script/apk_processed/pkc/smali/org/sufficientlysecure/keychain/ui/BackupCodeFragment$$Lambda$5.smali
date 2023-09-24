.class final synthetic Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;->arg$1:Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;->arg$2:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;---><init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAction()V
    .locals 5

    move-object/16 v2, p0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;->arg$1:Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->lambda$saveFile$5$BackupCodeFragment(Ljava/lang/String;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;--->onAction()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
