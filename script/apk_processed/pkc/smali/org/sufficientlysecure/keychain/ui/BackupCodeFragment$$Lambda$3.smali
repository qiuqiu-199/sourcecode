.class final synthetic Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$3;---><init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->lambda$onCreateView$3$BackupCodeFragment(Landroid/widget/CompoundButton;Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$3;--->onCheckedChanged(Landroid/widget/CompoundButton;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method