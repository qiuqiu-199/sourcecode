.class final synthetic Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final $instance:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$$Lambda$0;->$instance:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment;->lambda$onCreate$0$SettingsActivity$SyncPrefsFragment(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsActivity$SyncPrefsFragment$$Lambda$0;--->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
